package com.iticket.app.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.iticket.app.auth.LoginManager;
import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.MUsersService;
import com.iticket.app.util.PageUtil;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.UsersVO;


@Controller
public class HomeController {
	@Autowired
	private MUsersService service;
	@Autowired
	private DetailService dservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model, DetailVO vo) {
		List<DetailVO> list = dservice.getNameList(vo);
		List<DetailVO> pList = dservice.getPlaying(vo);
		List<DetailVO> cList = dservice.getClassic(vo);
		List<DetailVO> ccList = dservice.getConcert(vo);
		List<DetailVO> exList = dservice.getExhiName();
		System.out.println("list: " + list);
		model.addAttribute("musicalList", list);
		model.addAttribute("playingList", pList);
		model.addAttribute("classicList", cList);
		model.addAttribute("concertList", ccList);
		model.addAttribute("exhibiList", exList);
		return "home";
	}
//	@GetMapping("/main")
//	public String member() {
//		return "main";
//	}
//	@GetMapping("/main")
//	public ModelAndView main(Model model,Authentication authentication,HttpSession session) throws Exception {
//		ModelAndView mv = new ModelAndView();
//		//String userName = authentication.getName();
//		UserDetails user = (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		LoginManager manager = LoginManager.getInstance();
//		session.setMaxInactiveInterval(3600 * 6); //세션 유효시간 
//		UsersVO vo = service.check(user.getUsername());
//
//		if(manager.isUsing(vo.getUser_id()) == false ) {
//			model.addAttribute("loginStatus",false);
//		}
//		
//		manager.setSession(session, vo.getUser_id());
//
//		session.setAttribute("vo", vo);
//		model.addAttribute("user",user);
//		mv.setViewName("main");
//		return mv;
//	}
	@GetMapping("/main")
	public String member(HttpSession session,Principal principal) {
		session.setAttribute("user", principal.getName());
		return "main";
	}
	@GetMapping("/admin/main")
	public String admin() {
		return "admin/main";
	}
	@GetMapping("/mypageJuhee")
	public String mypageJuhee() {
		return "mypageJuhee";
	}
	@GetMapping("/search")
	public ModelAndView search(@RequestParam(value="pageNum",defaultValue = "1") int pageNum, DetailVO vo, HttpServletRequest request,String keyword,String seq,String genre) {
		
		//페이징처리
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("keyword", keyword);
		int totalRowCount=dservice.getCount(map);//전체글의 갯수
		int muCount=dservice.mucount(map);//뮤지컬글의 갯수
		int cocount=dservice.cocount(map);//콘서트글의 갯수
		int plcount=dservice.plcount(map);//연극글의 갯수
		int clexcount=dservice.clexcount(map);//클래식/무용글의 갯수
		int excount=dservice.excount(map);//클래식/무용글의 갯수
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		ModelAndView mv=new ModelAndView();
		List<DetailVO> all_list= null;			
		if(genre == null) {
			all_list=dservice.list(map);
		}else if(genre.equals("1")) {
			all_list=dservice.mu_list(map);
			pu=new PageUtil(pageNum, 5, 5, muCount);
		}else if(genre.equals("2")) {
			all_list=dservice.co_list(map);
			pu=new PageUtil(pageNum, 5, 5, cocount);
		}else if(genre.equals("3")) {
			all_list=dservice.pl_list(map);
			pu=new PageUtil(pageNum, 5, 5, plcount);
		}else if(genre.equals("4")) {
			all_list=dservice.clex_list(map);
			pu=new PageUtil(pageNum, 5, 5, clexcount);
		}else if(genre.equals("5")) {
			all_list=dservice.ex_list(map);
			pu=new PageUtil(pageNum, 5, 5, excount);
		}
		int count = 0;
		List<DetailVO> seq_list= null;
		if(seq == null) {
			seq_list=dservice.list(map);	
		}else if(seq.equals("imminent")) {

			seq_list=dservice.imminent_list(map);
			
			for(DetailVO list : all_list) {
				count++;
			}
			pu=new PageUtil(pageNum, 5, 5, count);
		}else if(seq.equals("sale")) {
			seq_list=dservice.sale_list(map);	
			
			for(DetailVO list : all_list) {
				count++;
			}
			pu=new PageUtil(pageNum, 5, 5, count);
		}
		
		for(DetailVO list : all_list) {
			String genre_name = dservice.genreSelectOne(list.getGr_num());
			mv.addObject("genre_name",genre_name);
		}
		
		mv.addObject("cnt",totalRowCount);
		mv.addObject("muCount",muCount);
		mv.addObject("cocount",cocount);
		mv.addObject("plcount",plcount);
		mv.addObject("clexcount",clexcount);
		mv.addObject("excount",excount);
		mv.addObject("all_list",all_list);
		mv.addObject("seq_list",seq_list);
		mv.addObject("pu",pu);
		mv.addObject("genre",genre);
		mv.addObject("keyword",keyword);
		return mv;
	}
}
