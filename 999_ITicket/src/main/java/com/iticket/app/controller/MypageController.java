package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.iticket.app.service.impl.MypageService;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReservationVO;
import com.iticket.app.vo.ReviewVO;
@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;
	//나의페이지 예매내역 조회(컨트롤러)
	@GetMapping("mypage")
	public String TicketingList(ForReservationVO vo,Model model){
		List<ForReservationVO> reservationList = mypageService.getTicketingList(vo);
		model.addAttribute("ReservationList", reservationList);
		return "mypageJuhee";
	}
	
	//나의 후기리뷰
	@GetMapping("myreview")
	public String goreview(ReviewVO vo, Model model) {
		List<ReviewVO> list =mypageService.getReview(vo);
		model.addAttribute("reviewList", list);
		
		return "myreview";
	}
}
