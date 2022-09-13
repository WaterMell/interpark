package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.HallVO;


public interface HallService {
	
	void insert_hall(HallVO vo);
	void update_hall(HallVO vo);
	void delete_hall(HallVO vo);
	HallVO get_hall(HallVO vo);
	List<HallVO> get_hall_List(HallVO vo);
	
	
}
