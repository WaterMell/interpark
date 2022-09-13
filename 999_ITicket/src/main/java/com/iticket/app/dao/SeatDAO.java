package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.SeatVO;

@Repository
public class SeatDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public SeatVO get_seat(SeatVO vo) {
		return mybatis.selectOne("seatDAO.get_seat",vo);
	}
	
	public List<SeatVO> getseatList(SeatVO vo) {
		return mybatis.selectList("seatDAO.getseatList");
	}
	
	public List<SeatVO> getseatList_choose(SeatVO vo) {
		return mybatis.selectList("seatDAO.getseatList_choose",vo);
	}
}
