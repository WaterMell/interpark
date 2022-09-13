package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.ScheduleVO;


public interface ScheduleService {
	ScheduleVO getSchedule(ScheduleVO vo);
	List<ScheduleVO> get_schedule_list(ScheduleVO vo);
}
