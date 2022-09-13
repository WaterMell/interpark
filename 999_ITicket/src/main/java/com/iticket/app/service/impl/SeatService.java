package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.SeatVO;

public interface SeatService {
	List<SeatVO> getseatList(SeatVO vo);
	SeatVO get_seat(SeatVO vo);
	List<SeatVO> getseatList_choose(SeatVO vo);
}
