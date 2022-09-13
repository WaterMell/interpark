package com.iticket.app.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.MUsersDao;
import com.iticket.app.dao.UserInfoDao;
import com.iticket.app.sec.CustomUserDetail;
import com.iticket.app.vo.AuthVO;
import com.iticket.app.vo.UsersVO;

@Service
public class UserInfoService {
	@Autowired private UserInfoDao dao;
	@Autowired private PasswordEncoder passwordEncoder;
	public int userUpdate(UsersVO vo) {
		dao.userUpdate(vo);
		return 1;
	}
	public int userPwupdate(UsersVO vo) {
		String pwd=vo.getUser_pw();
		System.out.println(pwd);
		vo.setUser_pw(passwordEncoder.encode(pwd));
		dao.userPwupdate(vo);
		return 1;
	}
	public int userDrop(UsersVO vo) {
		dao.userDrop(vo);
		return 1;
	}
}