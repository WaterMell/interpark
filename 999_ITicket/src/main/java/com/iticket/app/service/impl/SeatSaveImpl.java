package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.iticket.app.dao.SeatSaveDAO;
import com.iticket.app.vo.SeatSaveVO;


@Service
public class SeatSaveImpl implements SeatSaveService{
	@Autowired
	private SeatSaveDAO SeatSaveDAO;
	
	public SeatSaveImpl() {
		System.out.println(">> SeatSaveImpl 실행");
	}
	
	@Override
	public SeatSaveVO get_seatsave(SeatSaveVO vo) {
		System.out.println(">>SeatSaveImpl 내부 메소드 get_seatsave 실행");
		System.out.println("SeatSaveVO 값 : " + vo);
		return SeatSaveDAO.get_seatsave(vo);
	}

	@Override
	public void seatsave_insert(SeatSaveVO vo) {
		System.out.println(">>SeatSaveImpl 내부 메소드 seatsave_insert 실행");
		System.out.println("SeatSaveVO 값 : " + vo);
		SeatSaveDAO.seatsave_insert(vo);
	}

	@Override
	public void seatsave_delete(SeatSaveVO vo) {
		System.out.println(">>SeatSaveImpl 내부 메소드 seatsave_delete 실행");
		System.out.println("SeatSaveVO 값 : " + vo);
		SeatSaveDAO.seatsave_delete(vo);
	}

	@Override
	public List<SeatSaveVO> get_seatsave_list(SeatSaveVO vo) {
		System.out.println(">>SeatSaveImpl 내부 메소드 get_seatsave_list 실행");
		return SeatSaveDAO.get_seatsave_list(vo);
	}


}
