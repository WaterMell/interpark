package com.iticket.app.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.MUsersDao;
import com.iticket.app.sec.CustomUserDetail;
import com.iticket.app.vo.AuthVO;
import com.iticket.app.vo.UsersVO;

@Service
public class MUsersService {
	@Autowired private MUsersDao dao;
	@Autowired private PasswordEncoder passwordEncoder;
	public int insert(UsersVO vo) {
		String pwd=vo.getUser_pw();
		vo.setUser_pw(passwordEncoder.encode(pwd));
		dao.insert(vo);
		AuthVO avo=new AuthVO();
		avo.setUser_id(vo.getUser_id());
		if(avo.getUser_id().equals("admin")) {
			avo.setAuthority("ROLE_ADMIN");
		}else {
			avo.setAuthority("ROLE_MEMBER");
		}
		dao.insert(avo);
		return 1;
	}
	public CustomUserDetail userDetail(String user_id) {
		return dao.userDetail(user_id);
	}
	public UsersVO isMember(HashMap<String, String> map) {
		return dao.isMember(map);
	}
	public UsersVO check(String user_id) {
		return dao.check(user_id);
	}
	public UsersVO naverChk(UsersVO vo) {
		return dao.naverChk(vo);
	}
	public int insertN() {
		return dao.insertN();
	}
	public int updateN(UsersVO vo) {
		return dao.updateN(vo);
	}
	public UsersVO idFindPhone(UsersVO vo) {
		return dao.idFindPhone(vo);
	}
	public UsersVO idFindEmail(UsersVO vo) {
		return dao.idFindEmail(vo);
	}
	public UsersVO pwFindPhone(UsersVO vo) {
		return dao.pwFindPhone(vo);
	}
	public UsersVO pwFindEmail(UsersVO vo) {
		return dao.pwFindEmail(vo);
	}
	public UsersVO selectOne(UsersVO vo) {
		return dao.selectOne(vo);
	}
	public int updatepw(UsersVO vo) {
		String pwd=vo.getUser_pw();
		System.out.println(pwd);
		vo.setUser_pw(passwordEncoder.encode(pwd));
		dao.updatepw(vo);
		return 1;
	}
}
