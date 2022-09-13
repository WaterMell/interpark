package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.vo.DetailVO;

@Controller
public class ExhibitionController {
	@Autowired
	private DetailService detailService; 
	
	@RequestMapping("exhibition")
	public String goExhilist(DetailVO vo, Model model) {
		List<DetailVO> list = detailService.getExhiName();
		model.addAttribute("exhibiList", list);
		return "exhibition";
	}
}
