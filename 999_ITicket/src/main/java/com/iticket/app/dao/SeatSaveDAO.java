package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.SeatSaveVO;


@Repository
public class SeatSaveDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public SeatSaveVO get_seatsave(SeatSaveVO vo) {
		return mybatis.selectOne("seatsaveDAO.get_seatsave",vo);
	}

	public List<SeatSaveVO> get_seatsave_list(SeatSaveVO vo) {
		System.out.println("===> MyBatis 사용 get_seatsave_list() 실행");
		System.out.println("DAO에서 들어가는 vo : " + vo);
		return mybatis.selectList("seatsaveDAO.get_seatsave_list",vo);
	}
	
	public void seatsave_insert(SeatSaveVO vo) {
		System.out.println("===> MyBatis 사용 seatsave_insert() 실행");
		System.out.println("DAO에서 들어가는 VO : " + vo);
		mybatis.insert("seatsaveDAO.seatsave_insert",vo);
	}
	
	public void seatsave_delete(SeatSaveVO vo) {
		System.out.println("===> MyBatis 사용 seatsave_delete() 실행");
		System.out.println("DAO에서 들어가는 VO : " + vo);
		mybatis.delete("seatsaveDAO.seatsave_delete",vo);
	}

}
