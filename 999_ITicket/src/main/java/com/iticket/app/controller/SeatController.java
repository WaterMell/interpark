package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.SeatService;
import com.iticket.app.vo.SeatVO;
import com.iticket.app.service.impl.SeatSaveService;
import com.iticket.app.vo.SeatSaveVO;


@Controller
public class SeatController {
	@Autowired
	private SeatService seatService;
	@Autowired
	private SeatSaveService seatsaveService;
	

	@GetMapping("/seat")
	public String goSeat(SeatVO svo, Model model) {
		List<SeatVO> seat_list = seatService.getseatList(svo);
		model.addAttribute("getseatList", seat_list);
		return "seat";
	}
	
	@RequestMapping("get_seat")
	public String get_seat(int st_num, int sd_num, Model model) {
		SeatVO seat_vo = new SeatVO();
		SeatSaveVO save_vo = new SeatSaveVO();
		seat_vo.setSt_num(st_num);
		
		save_vo.setSd_num(sd_num);
		save_vo.setSt_num(st_num);
		
		SeatVO seat = seatService.get_seat(seat_vo);
		model.addAttribute("seat", seat);
		model.addAttribute("save_vo", save_vo);
		
		System.out.println("들어간 sd_num :" + sd_num);
		System.out.println("들어간 st_num : " + st_num);
		
		System.out.println("입력된 seatvo : " + seat_vo);
		System.out.println("입력된 save_vo : " + save_vo);
		
		System.out.println("세팅된 seat : " + seat);
		
		return "/reserv/reserv_insert";
	}
	
	
// 생략
//	@GetMapping("/choose_seat")
//	public String choose_seat(SeatVO vo, Model model) {
		
//		System.out.println("choose_seat 들어간 vo : "+ vo);
//		List<SeatVO> seat_list = seatService.getseatList_choose(vo);
//		System.out.println("choose_seat 들어간 seat_list : "+ seat_list);
//				
//		model.addAttribute("getseatList_choose", seat_list);
//		return "/reserv/reserv_insert";
//	}

}
