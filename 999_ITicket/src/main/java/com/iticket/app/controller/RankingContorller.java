package com.iticket.app.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.vo.DetailVO;

@Controller
public class RankingContorller {
	
	@RequestMapping("ranking")
	public String goRanking() {
		return "ranking";
	}

	
	@RequestMapping("ranking2")
	public String goRanking2() {
		return "ranking2";
	}

	
}
