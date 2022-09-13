package com.iticket.app.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.sec.CustomUserDetail;
import com.iticket.app.vo.AuthVO;
import com.iticket.app.vo.UsersVO;

@Repository
public class UserInfoDao {
	@Autowired private SqlSession sqlSession;
	private final String NAMESPACE="info";
	
	public int userUpdate(UsersVO vo) {
		return sqlSession.update(NAMESPACE + ".userUpdate", vo);
	}
	public int userPwupdate(UsersVO vo) {
		return sqlSession.update(NAMESPACE + ".userPwupdate", vo);
	}
	public int userDrop(UsersVO vo) {
		return sqlSession.update(NAMESPACE + ".userDrop", vo);
	}
}