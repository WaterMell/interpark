package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.ReservDAO;
import com.iticket.app.dao.SeatDAO;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReservationVO;
import com.iticket.app.vo.SeatVO;

@Service
public class ReservImpl implements ReservService{
	@Autowired
	private ReservDAO reservDAO;

	public ReservImpl() {
		System.out.println(">> ReservImpl() 실행");
	}
	
	@Override
	public void insert_reserv(ReservationVO vo) {
		System.out.println(">> reserv 서비스에서 들어가는 vo : " + vo);
		reservDAO.insert_reserv(vo);
	}

	@Override
	public void update_reserv(ReservationVO vo) {
		reservDAO.update_reserv(vo);
	}

	@Override
	public void delete_reserv(ReservationVO vo) {
		reservDAO.delete_reserv(vo);
	}

	@Override
	public ReservationVO get_reserv(ReservationVO vo) {
		return reservDAO.get_reserv(vo);
	}

	@Override
	public List<ReservationVO> get_reserv_List(ReservationVO vo) {
		return reservDAO.get_reserv_list(vo);
	}

	@Override
	public List<ReservationVO> get_reserv_List_id(ReservationVO vo) {
		return reservDAO.get_reserv_List_id(vo);
	}

	@Override
	public List<ForReservationVO> get_reserv_history(ReservationVO vo) {

		return reservDAO.get_reserv_history(vo);
	}

	@Override
	public ForReservationVO get_one_reserv_history(ReservationVO vo) {

		return reservDAO.get_one_reserv_history(vo);
	}


}
