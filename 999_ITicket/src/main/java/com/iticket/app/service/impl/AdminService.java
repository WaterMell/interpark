package com.iticket.app.service.impl;

import java.io.IOException;
import java.util.List;

import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.UsersVO;


public interface AdminService {

	void getdelete(DetailVO vo);
	void getinsert(DetailVO vo);
	List<DetailVO> getDetailList(DetailVO vo);
	List<UsersVO> getuserlist(UsersVO vo);
	void updateBoard(DetailVO vo);
	DetailVO getboard(DetailVO vo);
}
