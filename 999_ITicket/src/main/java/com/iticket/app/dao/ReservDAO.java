package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReservationVO;


@Repository
public class ReservDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<ReservationVO> get_reserv_list(ReservationVO vo) {
		System.out.println("===> MyBatis 사용 get_reserv_list() 실행");
		return mybatis.selectList("reservDAO.get_reserv_List");
	}

	public List<ReservationVO> get_reserv_List_id(ReservationVO vo){
		System.out.println("===> MyBatis 사용 get_reserv_List_id() 실행");
		return mybatis.selectList("reservDAO.get_reserv_List_id",vo);
	}
	
	public ReservationVO get_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis 사용 get_reserv() 실행");
		return mybatis.selectOne("reservDAO.get_reserv",vo);
	}
	
	//글 입력
	public void insert_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis 사용 insert_reserv() 실행");
		System.out.println("DAO에서 들어가는 VO : " + vo);
		mybatis.insert("reservDAO.insert_reserv", vo);
	}
	
	//글 수정
	public void update_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis 사용 update_reserv() 실행");
		mybatis.update("reservDAO.update_reserv", vo);
	}

	//글 삭제
	public void delete_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis 사용 delete_reserv() 실행");
		mybatis.delete("reservDAO.delete_reserv", vo);
	}
	
	//예매내역 조회
	public List<ForReservationVO> get_reserv_history(ReservationVO vo){
		System.out.println("===> MyBatis 사용 get_reserv_history() 실행");
		return mybatis.selectList("reservDAO.get_reserv_history",vo);
		
	}
	
	//예매내역 삭제 하나만 선택
	public ForReservationVO get_one_reserv_history(ReservationVO vo){
		System.out.println("===> MyBatis 사용 get_one_reserv_history() 실행");
		return mybatis.selectOne("reservDAO.get_one_reserv_history",vo);
			
	}
	
}
