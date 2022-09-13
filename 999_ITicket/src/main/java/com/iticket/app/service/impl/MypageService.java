package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReservationVO;
import com.iticket.app.vo.ReviewVO;

public interface MypageService {

	
	List<ForReservationVO> getTicketingList(ForReservationVO vo);
	List<ReviewVO> getReview(ReviewVO vo);//리뷰리스트

	

}
