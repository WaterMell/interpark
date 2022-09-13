package com.iticket.app.dao;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.fileupload.UploadContext;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.iticket.app.service.impl.AdminService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ReviewVO;
import com.iticket.app.vo.UsersVO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;



@Repository
public class AdminDAO {
  
	@Autowired
	private SqlSessionTemplate mybatis;

	public AdminDAO() {
		System.out.println("adminmybatis생성");
	}
	
	
	//회원조회
		public List<UsersVO> getusersList(UsersVO vo){
			if(vo!= null && vo.getUserlistKeyword() == null){//내가 만든 파라미터 값넣기      //여기서 부터 값을 넣어야됨
				vo.setUserlistKeyword("");
			}
			return mybatis.selectList("Admin.getuserlist",vo);
		}
		// 상품삭제
		public void getDelete(DetailVO vo) {
			if (vo != null && vo.getDeletesearchKeyword() == null) {
				vo.setDeletesearchKeyword("");
			}
			System.out.println("mybatis사용getDelete() :" + vo);
			mybatis.delete("Admin.deleteDetail", vo);

		}
	//상품업데이트
	public void updateBoard(DetailVO vo) {
		System.out.println("mybatis사용 update()실행");
		mybatis.update("Admin.updateproduct",vo);
	}

	// 상품추가
	public void getinsert(DetailVO vo) {
		System.out.println(">>개시글입력");
		System.out.println("getinsert:" + vo);
		mybatis.insert("Admin.getinsert", vo);
	}
	//한개의 삼품조회
	public DetailVO getboard(DetailVO vo) {
		System.out.println("===> MyBatis 사용 getBoard() 실행");
		return mybatis.selectOne("Admin.getBoard",vo);
	}

	// 상품글목록 조회
	public List<DetailVO> getDetailList(DetailVO vo) {
		if (vo != null && vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		System.out.println("mybatis사용getDetailList() : " + vo);

		return mybatis.selectList("Admin.getDetailList", vo);
	}

}
