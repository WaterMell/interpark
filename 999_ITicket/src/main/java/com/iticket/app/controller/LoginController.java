package com.iticket.app.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import com.iticket.app.auth.NaverLogin;
import com.iticket.app.service.impl.MUsersService;
import com.iticket.app.vo.UsersVO;

@Controller
public class LoginController {
	@Autowired private MUsersService service;
	
	@GetMapping("/login")
	public String login(String error, String logout, Model model, HttpSession session) throws Exception {
//      log.info("error: " + error);
//      log.info("logout: " + logout);
		String naverUrl = NaverLogin.getAuthorizationUrl(session);
		model.addAttribute("naverUrl", naverUrl);
		return "login";
	}
//	@GetMapping("/logout")
//	public String logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (auth != null) {
//			new SecurityContextLogoutHandler().logout(request, response, auth);
//		}
//		return "redirect:login";
//	}
	@GetMapping("/idFind")
	public String idFind() {
		return "idFind";
	}
	@PostMapping("/idFindPhone")
	public String idFindPhoneOk(UsersVO vo, Model model) {
		UsersVO user = service.idFindPhone(vo);
		model.addAttribute("user", user);
		return "idFindOk";
	}
	@PostMapping("/idFindEmail")
	public String idFindEmailOk(UsersVO vo, Model model) {
		UsersVO user = service.idFindEmail(vo);
		model.addAttribute("user", user);
		return "idFindOk";
	}
	@GetMapping("/pwFind")
	public String pwFind(UsersVO vo, Model model) {
		return "pwFind";
	}
	@PostMapping("/pwFindPhone")
	public String pwFindPhoneOk(UsersVO vo, Model model) {
		UsersVO user = service.pwFindPhone(vo);
		model.addAttribute("user", user);
		return "pwFindOk";
	}
	@PostMapping("/pwFindEmail")
	public String pwFindEmailOk(UsersVO vo, Model model) {
		UsersVO user = service.pwFindEmail(vo);
		model.addAttribute("user", user);
		return "pwFindOk";
	}
	@PostMapping("/updatepw")
	public String updatepw(UsersVO vo, Model model) {
		System.out.println(vo);
		service.updatepw(vo);
		return "pwFind";
	}
//	@PostMapping("/login")
//	public String login(UsersVO vo,HttpSession session,Model model) {
//		HashMap<String , String> map=new HashMap<String, String>();
//		map.put("id", vo.getUser_id());
//		map.put("pw", vo.getUser_pw());
//		UsersVO vo1 = service.isMember(map);
//		if(vo1!=null) { //�쉶�썝�씤 寃쎌슦 �꽭�뀡�뿉 �븘�씠�뵒 �떞湲�
//			session.setAttribute("id", vo.getUser_id());
//			return "redirect:/login";
//		}else {
//			//model.addAttribute("errMsg","�븘�씠�뵒 �삉�뒗 鍮꾨�踰덊샇媛� 留욎� �븡�븘�슂.");
//			return "login";
//		}
//	}

//	@GetMapping("/logout")
//	public String mlogout(HttpSession session) {
//		session.invalidate();
//		return "lp";
//	}
}
