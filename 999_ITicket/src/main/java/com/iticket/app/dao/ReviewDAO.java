package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReviewVO;
import com.iticket.app.vo.ScheduleVO;

@Repository
public class ReviewDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertReview(ReviewVO vo) {
		mybatis.insert("reviewDAO.insertReview", vo);
	}

	public List<ForReservationVO> getReservDate(ReviewVO vo) {
		return mybatis.selectList("reviewDAO.getReservDate", vo);
	}

	public ScheduleVO getOneRDate(ReviewVO vo) {
		return mybatis.selectOne("reviewDAO.getOneResDate", vo);
	}

	public List<ReviewVO> reviewList(DetailVO vo) {
		return mybatis.selectList("reviewDAO.reviewList", vo);
	}

	public void deleteReview(ReviewVO vo) {
		mybatis.delete("reviewDAO.deleteReivew", vo);
	}

	public void updateReview(ReviewVO vo) {
		mybatis.update("reviewDAO.updateReview", vo);
	}

	public ReviewVO getOneReview(ReviewVO vo) {
		return mybatis.selectOne("reviewDAO.getOneReivew", vo);
	}

	
}
