package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.SeatSaveService;
import com.iticket.app.vo.SeatSaveVO;

@Controller
public class SeatSaveController {
	@Autowired
	private SeatSaveService seatsaveService;

	@RequestMapping("get_seatsave")
	public String get_seatsave(SeatSaveVO vo, Model model) {
		SeatSaveVO seatsave = seatsaveService.get_seatsave(vo);
		model.addAttribute("seatsave", seatsave);
		return "/reserv/reserv_insert";
	}

	@RequestMapping("insert_seatsave")
	public String insert_seatsave(SeatSaveVO vo, Model model) {
		System.out.println(">>> insert_seatsave");
		System.out.println("seatsave vo : " + vo);
		seatsaveService.seatsave_insert(vo);

		return "/reserv/reserv_insert";
	}

	@RequestMapping("delete_seatsave")
	public String delete_seatsave(SeatSaveVO vo) {
		System.out.println(">> delete_seatsave");
		System.out.println("seatsave vo : " + vo);

		seatsaveService.seatsave_delete(vo);
		return "/reserv/reserv_insert";
	}

}
