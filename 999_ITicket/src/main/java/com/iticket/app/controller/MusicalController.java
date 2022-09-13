package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.SeatService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.SeatVO;

@Controller
public class MusicalController {
	
	@Autowired
	private DetailService detailService;
	
	
	@GetMapping("/musical")
	public String goMusical(DetailVO dvo, Model model) {
		List<DetailVO> list = detailService.getNameList(dvo);
		model.addAttribute("getNameList", list);
		return "musical";
	}
	
	

}
