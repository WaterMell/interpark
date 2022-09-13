package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReviewVO;
import com.iticket.app.vo.ScheduleVO;

public interface ReviewService {
	void insertReivew(ReviewVO vo);
	List<ForReservationVO> getReservDate(ReviewVO vo);
	ScheduleVO getOneRDate(ReviewVO vo);
	List<ReviewVO> reviewList(DetailVO vo);
	void deleteReview(ReviewVO vo);
	void updateReview(ReviewVO vo);
	ReviewVO getOneReview(ReviewVO vo);
}
