package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.SeatDAO;
import com.iticket.app.vo.SeatVO;

@Service
public class SeatImpl implements SeatService{
	@Autowired
	private SeatDAO SeatDAO;

	@Override
	public List<SeatVO> getseatList(SeatVO vo) {
		return SeatDAO.getseatList(vo);
	}

	public SeatVO get_seat(SeatVO vo) {
		return SeatDAO.get_seat(vo);
	}

	@Override
	public List<SeatVO> getseatList_choose(SeatVO vo) {
		// TODO Auto-generated method stub
		return SeatDAO.getseatList_choose(vo);
	}
	
}
