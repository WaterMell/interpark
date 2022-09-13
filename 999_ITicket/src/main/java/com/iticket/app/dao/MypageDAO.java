package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReviewVO;

@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public MypageDAO() {
		System.out.println("mypageDao생성");
	}

//예매내역 조회
	public List<ForReservationVO> TicketingList(ForReservationVO vo){
			return mybatis.selectList("mypage.Tickeketing",vo);
	}
	
//나의페이지리뷰 조회
	public List<ReviewVO> getreview_list(ReviewVO vo){
		return mybatis.selectList("mypage.reviewList",vo);
	}
}


