package com.iticket.app.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.DetailDAO;
import com.iticket.app.vo.DetailVO;

@Service
public class DetailImpl implements DetailService{
	@Autowired
	private DetailDAO detailDAO;

	@Override
	public DetailVO getDetail(DetailVO vo) {
		return detailDAO.getDetail(vo);
	}

	@Override
	public List<DetailVO> getNameList(DetailVO vo) {
		return detailDAO.getNameList(vo);
	}

	@Override
	public List<DetailVO> getExhiName() {
		return detailDAO.getExhiNames();
	}

	@Override
	public List<DetailVO> getDetail_list(DetailVO vo) {
		return detailDAO.getDetail_list();
	}

	@Override
	public List<DetailVO> getImgs() {
		return detailDAO.getImgs();
	}

	@Override
	public List<DetailVO> getConcert(DetailVO vo) {
		return detailDAO.getConcert();
	}

	@Override
	public List<DetailVO> getPlaying(DetailVO vo) {
		return detailDAO.getPlaying();
	}

	@Override
	public List<DetailVO> getClassic(DetailVO vo) {
		return detailDAO.getClassic();
	}
	@Override
	public int getCount(HashMap<String, Object> map) {
		return detailDAO.getCount(map);
	}
	@Override
	public int mucount(HashMap<String, Object> map) {
		return detailDAO.mugetCount(map);
	}
	@Override
	public int cocount(HashMap<String, Object> map) {
		return detailDAO.cogetCount(map);
	}
	@Override
	public int plcount(HashMap<String, Object> map) {
		return detailDAO.plgetCount(map);
	}
	@Override
	public int clexcount(HashMap<String, Object> map) {
		return detailDAO.clexgetCount(map);
	}
	@Override
	public int excount(HashMap<String, Object> map) {
		return detailDAO.exgetCount(map);
	}
	@Override
	public List<DetailVO> list(HashMap<String, Object> map) {
		return detailDAO.list(map);
	}
	@Override
	public List<DetailVO> mu_list(HashMap<String, Object> map) {
		return detailDAO.mu_list(map);
	}
	@Override
	public List<DetailVO> co_list(HashMap<String, Object> map) {
		return detailDAO.co_list(map);
	}
	@Override
	public List<DetailVO> pl_list(HashMap<String, Object> map) {
		return detailDAO.pl_list(map);
	}
	@Override
	public List<DetailVO> clex_list(HashMap<String, Object> map) {
		return detailDAO.clex_list(map);
	}
	@Override
	public List<DetailVO> ex_list(HashMap<String, Object> map) {
		return detailDAO.ex_list(map);
	}
	@Override
	public List<DetailVO> imminent_list(HashMap<String, Object> map) {
		return detailDAO.imminent_list(map);
	}
	@Override
	public List<DetailVO> sale_list(HashMap<String, Object> map) {
		return detailDAO.sale_list(map);
	}
	@Override
	public DetailVO next(int gd_num) {
		return detailDAO.next(gd_num);
	}
	@Override
	public DetailVO prev(int gd_num) {
		return detailDAO.prev(gd_num);
	}
	@Override
	public String genreSelectOne(int gr_num) {
		return detailDAO.genreSelectOne(gr_num);
	}
}
