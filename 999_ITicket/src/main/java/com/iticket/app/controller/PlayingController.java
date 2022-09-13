package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.vo.DetailVO;

@Controller
public class PlayingController {
	@Autowired
	private DetailService detailService;
	
	@GetMapping("playing")
	public String goPlaying(DetailVO vo, Model model) {
		List<DetailVO> list = detailService.getPlaying(vo);
		model.addAttribute("playList", list);
		return "playing";
	}
}
