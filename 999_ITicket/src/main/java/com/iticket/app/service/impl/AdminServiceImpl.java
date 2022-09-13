package com.iticket.app.service.impl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.AdminDAO;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.UsersVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;

	// 상품조회리스트
	@Override
	public List<DetailVO> getDetailList(DetailVO vo) {
		return adminDAO.getDetailList(vo);
	}

	// 상품추가
	@Override
	public void getinsert(DetailVO vo) {
		adminDAO.getinsert(vo);
	}

	// 상품삭제
	@Override
	public void getdelete(DetailVO vo) {
		adminDAO.getDelete(vo);
	}

	//회원조회
	@Override
	public List<UsersVO> getuserlist(UsersVO vo) {
		return adminDAO.getusersList(vo);
	}
	//업데이트
	@Override
	public void updateBoard(DetailVO vo) {
		adminDAO.updateBoard(vo);
		
	}

	@Override
	public DetailVO getboard(DetailVO vo) {
		
		return adminDAO.getboard(vo);
	}

}