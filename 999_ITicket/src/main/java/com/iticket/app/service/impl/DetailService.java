package com.iticket.app.service.impl;

import java.util.HashMap;
import java.util.List;

import com.iticket.app.vo.DetailVO;

public interface DetailService {
	DetailVO getDetail(DetailVO vo);
	List<DetailVO> getNameList(DetailVO vo);
	List<DetailVO> getExhiName();
	List<DetailVO> getDetail_list(DetailVO vo);
	List<DetailVO> getImgs();
	List<DetailVO> getConcert(DetailVO vo);
	List<DetailVO> getPlaying(DetailVO vo);
	List<DetailVO> getClassic(DetailVO vo);
	int getCount(HashMap<String, Object> map);
	int mucount(HashMap<String, Object> map);
	int cocount(HashMap<String, Object> map);
	int plcount(HashMap<String, Object> map);
	int clexcount(HashMap<String, Object> map);
	int excount(HashMap<String, Object> map);
	List<DetailVO> list(HashMap<String, Object> map);
	List<DetailVO> mu_list(HashMap<String, Object> map);
	List<DetailVO> co_list(HashMap<String, Object> map);
	List<DetailVO> pl_list(HashMap<String, Object> map);
	List<DetailVO> clex_list(HashMap<String, Object> map);
	List<DetailVO> ex_list(HashMap<String, Object> map);
	List<DetailVO> imminent_list(HashMap<String, Object> map);
	List<DetailVO> sale_list(HashMap<String, Object> map);
	DetailVO next(int gd_num);
	DetailVO prev(int gd_num);
	String genreSelectOne(int gr_num);
}
