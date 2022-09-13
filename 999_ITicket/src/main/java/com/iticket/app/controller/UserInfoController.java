package com.iticket.app.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.iticket.app.service.impl.MUsersService;
import com.iticket.app.service.impl.UserInfoService;
import com.iticket.app.vo.UsersVO;

@Controller
public class UserInfoController {
	@Autowired
	private MUsersService service;
	@Autowired
	private UserInfoService userservice;
	@GetMapping("/userinfo")
	public String userinfo() {
		
		return "info/userinfo";
	}
	@GetMapping("/userinfoMain")
	public String userinfoMain(HttpServletRequest request,String order) {
		request.setAttribute("order", order);
		
		return "info/userinfoMain";
	}
	@PostMapping("/userinfoMainOk")
	public String userinfoMainOk(UsersVO vo,HttpServletRequest request,HttpSession session,String user_pw,String order) {
		String id = (String) session.getAttribute("user");
		vo.setUser_id(id);
		UsersVO user = service.selectOne(vo);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		if(encoder.matches(user_pw, user.getUser_pw())) {
			
			UsersVO user1 = service.selectOne(vo);
			request.setAttribute("info", user1);
			return "info/userinfoMainOk";
		}else {
			String msg = "비밀번호가 틀렸습니다. 다시 입력해 주세요.";
			request.setAttribute("msg", msg);
			request.setAttribute("order", order);
			return "info/userinfoMain";
		}

	}
	@PostMapping("/userUpdate")
	public String userUpdate(UsersVO vo,HttpServletRequest request,HttpSession session) {
		String id = (String) session.getAttribute("user");
		vo.setUser_id(id);
		vo.setUser_name(request.getParameter("user_name"));
		vo.setPhone(request.getParameter("phone"));
		vo.setEmail(request.getParameter("email"));
		userservice.userUpdate(vo);
		return "info/userinfo";
	}
	@PostMapping("/pwUpdate")
	public String pwUpdate(UsersVO vo,HttpServletRequest request,HttpSession session) {
		String id = (String) session.getAttribute("user");
		vo.setUser_id(id);
		vo.setUser_pw(request.getParameter("user_pw"));
		userservice.userPwupdate(vo);
		return "info/userinfo";
	}
	@GetMapping("/userDrop")
	public String userdrop(UsersVO vo,HttpSession session) {
		String id = (String) session.getAttribute("user");
		vo.setUser_id(id);
		userservice.userDrop(vo);
		SecurityContextHolder.clearContext();
		return "redirect:login";
	}
}