package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.MypageDAO;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReservationVO;
import com.iticket.app.vo.ReviewVO;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageDAO mypageDAO;

	@Override
	public List<ForReservationVO> getTicketingList(ForReservationVO vo) {
		
		return mypageDAO.TicketingList(vo);
	}

	@Override
	public List<ReviewVO> getReview(ReviewVO vo) {
		
		return  mypageDAO.getreview_list(vo);
	} 
}
