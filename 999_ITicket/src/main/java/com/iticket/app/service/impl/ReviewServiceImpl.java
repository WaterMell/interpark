package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.ReviewDAO;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReviewVO;
import com.iticket.app.vo.ScheduleVO;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public void insertReivew(ReviewVO vo) {
		reviewDAO.insertReview(vo);
	}

	@Override
	public List<ForReservationVO> getReservDate(ReviewVO vo) {
		return reviewDAO.getReservDate(vo);
	}

	@Override
	public ScheduleVO getOneRDate(ReviewVO vo) {
		return reviewDAO.getOneRDate(vo);
	}

	@Override
	public List<ReviewVO> reviewList(DetailVO vo) {
		return reviewDAO.reviewList(vo);
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		reviewDAO.deleteReview(vo);
	}

	@Override
	public void updateReview(ReviewVO vo) {
		reviewDAO.updateReview(vo);
	}

	@Override
	public ReviewVO getOneReview(ReviewVO vo) {
		return reviewDAO.getOneReview(vo);
	}

	
}
