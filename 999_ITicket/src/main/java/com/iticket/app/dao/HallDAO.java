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
		System.out.println("===> MyBatis ��� get_hall_list() ����");
		return mybatis.selectList("hallDAO.get_hall_List");
	}
	
	public HallVO get_hall(HallVO vo) {
		System.out.println("===> MyBatis ��� get_hall() ����");
		return mybatis.selectOne("hallDAO.get_hall",vo);
	}
	
	//�� �Է�
	public void insert_hall(HallVO vo) {
		System.out.println("===> MyBatis ��� insert_hall() ����");
		mybatis.insert("hallDAO.insert_hall", vo);
	}
	
	//�� ����
	public void update_hall(HallVO vo) {
		System.out.println("===> MyBatis ��� update_hall() ����");
		mybatis.update("hallDAO.update_hall", vo);
	}

	//�� ����
	public void delete_hall(HallVO vo) {
		System.out.println("===> MyBatis ��� delete_hall() ����");
		mybatis.delete("hallDAO.delete_hall", vo);
	}
}
