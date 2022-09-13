package com.iticket.app.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.DetailVO;

@Repository
public class DetailDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public DetailVO getDetail(DetailVO vo) {
		return mybatis.selectOne("detailDAO.getDetail", vo);
	}

	public List<DetailVO> getNameList(DetailVO vo) {
		return mybatis.selectList("detailDAO.getMusicalName");
	}

	public List<DetailVO> getExhiNames() {
		return mybatis.selectList("detailDAO.getExhiNames");
	}
	
	public List<DetailVO> getDetail_list() {
		return mybatis.selectList("detailDAO.getDetail_list");
	}

	public List<DetailVO> getImgs() {
		return mybatis.selectList("detailDAO.getImgs");
	}

	public List<DetailVO> getConcert() {
		return mybatis.selectList("detailDAO.getConcert");
	}

	public List<DetailVO> getPlaying() {
		return mybatis.selectList("detailDAO.getPlaying");
	}

	public List<DetailVO> getClassic() {
		return mybatis.selectList("detailDAO.getClassic");
	}
	public int getCount(HashMap<String, Object> map) {
		return mybatis.selectOne("detailDAO.count",map);
	}
	//장르 키워드 검색
	public int mugetCount(HashMap<String, Object> map) {
		return mybatis.selectOne("detailDAO.mucount",map);
	}
	public int cogetCount(HashMap<String, Object> map) {
		return mybatis.selectOne("detailDAO.cocount",map);
	}
	public int plgetCount(HashMap<String, Object> map) {
		return mybatis.selectOne("detailDAO.plcount",map);
	}
	public int clexgetCount(HashMap<String, Object> map) {
		return mybatis.selectOne("detailDAO.clexcount",map);
	}
	public int exgetCount(HashMap<String, Object> map) {
		return mybatis.selectOne("detailDAO.excount",map);
	}
	public List<DetailVO> list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.list",map);
	}
	public List<DetailVO> mu_list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.mu_list",map);
	}
	public List<DetailVO> co_list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.co_list",map);
	}
	public List<DetailVO> pl_list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.pl_list",map);
	}
	public List<DetailVO> clex_list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.clex_list",map);
	}
	public List<DetailVO> ex_list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.ex_list",map);
	}
	public List<DetailVO> imminent_list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.imminent_list",map);
	}
	public List<DetailVO> sale_list(HashMap<String, Object> map){
		return mybatis.selectList("detailDAO.sale_list",map);
	}
	public DetailVO prev(int gd_num) {
		return mybatis.selectOne("detailDAO.prev",gd_num);
	}
	public DetailVO next(int gd_num) {
		return mybatis.selectOne("detailDAO.next",gd_num);
	}
	public String genreSelectOne(int gr_num) {
		return mybatis.selectOne("detailDAO.genreSelectOne",gr_num);
	}
}
