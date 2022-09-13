package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.HallDAO;
import com.iticket.app.vo.HallVO;


@Service
public class HallImpl implements HallService{
	@Autowired

	private HallDAO hallDAO;
	public HallImpl() {
		System.out.println(">> HallImpl() °´Ã¼ »ý¼º");
	}
	
	@Override
	public void insert_hall(HallVO vo) {
		hallDAO.insert_hall(vo);
	}

	@Override
	public void update_hall(HallVO vo) {
		hallDAO.update_hall(vo);
	}

	@Override
	public void delete_hall(HallVO vo) {
		hallDAO.delete_hall(vo);
	}

	@Override
	public HallVO get_hall(HallVO vo) {
		return hallDAO.get_hall(vo);
	}

	@Override
	public List<HallVO> get_hall_List(HallVO vo) {
		return hallDAO.get_hall_list(vo);
	}


}
