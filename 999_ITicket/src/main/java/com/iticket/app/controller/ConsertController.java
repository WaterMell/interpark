package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.vo.DetailVO;

@Controller
public class ConsertController {
	@Autowired
	private DetailService detailService;
	
	@GetMapping("concert")
	public String goConcert(DetailVO vo, Model model) {
		List<DetailVO> list = detailService.getConcert(vo);
		model.addAttribute("concertList", list);
		return "concert";
	}
}
