package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReservationVO;

public interface ReservService {
	void insert_reserv(ReservationVO vo);
	void update_reserv(ReservationVO vo);
	void delete_reserv(ReservationVO vo);
	ReservationVO get_reserv(ReservationVO vo);
	List<ReservationVO> get_reserv_List(ReservationVO vo);
	List<ReservationVO> get_reserv_List_id(ReservationVO vo);
	List<ForReservationVO> get_reserv_history(ReservationVO vo);
	ForReservationVO get_one_reserv_history(ReservationVO vo);
}
