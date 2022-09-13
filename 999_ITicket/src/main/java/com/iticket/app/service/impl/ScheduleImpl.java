package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.ScheduleDAO;
import com.iticket.app.vo.ScheduleVO;
import com.iticket.app.vo.SeatVO;

@Service
public class ScheduleImpl implements ScheduleService {
	@Autowired
	private ScheduleDAO scheduleDAO;

	@Override
	public List<ScheduleVO> get_schedule_list(ScheduleVO vo) {
		return scheduleDAO.get_schedule_list(vo);
	}

	@Override
	public ScheduleVO getSchedule(ScheduleVO vo) {
		// TODO Auto-generated method stub
		return scheduleDAO.getSchedule(vo);
	}
}
