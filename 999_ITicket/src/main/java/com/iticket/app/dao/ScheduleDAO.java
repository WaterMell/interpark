package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.ScheduleVO;


@Repository
public class ScheduleDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	public ScheduleVO getSchedule(ScheduleVO vo) {
		return mybatis.selectOne("scheduleDAO.get_schedule",vo);
	}
	
	public List<ScheduleVO> get_schedule_list(ScheduleVO vo) {
		return mybatis.selectList("scheduleDAO.get_schedule_list",vo);
	}
	
}
