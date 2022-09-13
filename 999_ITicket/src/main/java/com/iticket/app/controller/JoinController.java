package com.iticket.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iticket.app.service.impl.MUsersService;
import com.iticket.app.vo.UsersVO;

@Controller
public class JoinController {
	@Autowired private MUsersService service;
	@GetMapping("/join")
	public String joinForm() {
		return "join";
	}
	@PostMapping("/join")
	public String join(UsersVO vo) {
		if(vo == null) {
			return "join";
		}
		service.insert(vo);
		return "login";
	}
	@RequestMapping(value="/idInvalid",produces = {MediaType.APPLICATION_JSON_VALUE})
	public @ResponseBody String idInvalid(String id) {
		System.out.println(id);
		String msg = "fail";
		if(service.check(id) != null) {
			msg = "success";
		}
		System.out.println(msg);
		
		return msg;
	}
}
