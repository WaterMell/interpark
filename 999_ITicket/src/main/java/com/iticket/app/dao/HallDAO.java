package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.HallVO;


@Repository
public class HallDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<HallVO> get_hall_list(HallVO vo) {
		System.out.println("===> MyBatis 사용 get_hall_list() 실행");
		return mybatis.selectList("hallDAO.get_hall_List");
	}
	
	public HallVO get_hall(HallVO vo) {
		System.out.println("===> MyBatis 사용 get_hall() 실행");
		return mybatis.selectOne("hallDAO.get_hall",vo);
	}
	
	//글 입력
	public void insert_hall(HallVO vo) {
		System.out.println("===> MyBatis 사용 insert_hall() 실행");
		mybatis.insert("hallDAO.insert_hall", vo);
	}
	
	//글 수정
	public void update_hall(HallVO vo) {
		System.out.println("===> MyBatis 사용 update_hall() 실행");
		mybatis.update("hallDAO.update_hall", vo);
	}

	//글 삭제
	public void delete_hall(HallVO vo) {
		System.out.println("===> MyBatis 사용 delete_hall() 실행");
		mybatis.delete("hallDAO.delete_hall", vo);
	}
}
