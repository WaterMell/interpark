package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.SeatSaveVO;

public interface SeatSaveService {
	SeatSaveVO get_seatsave(SeatSaveVO vo); 
	void seatsave_insert(SeatSaveVO vo); 
	void seatsave_delete(SeatSaveVO vo);
	List<SeatSaveVO> get_seatsave_list(SeatSaveVO vo);
}
