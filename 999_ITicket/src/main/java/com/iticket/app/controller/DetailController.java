package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.ReviewService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ReviewVO;

@Controller
public class DetailController {
	@Autowired
	private DetailService detailService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("reserv")
	public String goReserv() {
		return "reserv";
	}
	
	@RequestMapping("getDetail")
	public String getDetail(DetailVO vo, Model model) {
		DetailVO detail = detailService.getDetail(vo);
		System.out.println("vo: " + vo);
		List<ReviewVO> list = reviewService.reviewList(vo);
		float sum = 0;
		for (ReviewVO vo1 : list) {
			sum += vo1.getRv_likecnt();
		}
		float count = sum / list.size();
//		System.out.println("count: " + count);
		String result2 = String.format("%.2f", count);
		detail.setGd_average(result2);
		int reviewCount = list.size();
		model.addAttribute("reviewCount", reviewCount);
//		System.out.println("detail: " + detail);
//		System.out.println("result2: " + result2);
		model.addAttribute("reviewList", list);
//		System.out.println("reviewList: " + list);
		model.addAttribute("detail", detail);
		return "reserv";
		
	}
	
	@GetMapping("/home")
	public String goImg(Model model) {
		List<DetailVO> list = detailService.getImgs();
		model.addAttribute("imgList", list);
		return "nav";
	}
	
	@GetMapping("classic")
	public String goClassis(DetailVO vo, Model model) {
		List<DetailVO> list = detailService.getClassic(vo);
		model.addAttribute("classicList", list);
		return "classic";
	}
}
