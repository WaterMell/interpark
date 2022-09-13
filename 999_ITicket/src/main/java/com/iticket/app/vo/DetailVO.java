package com.iticket.app.vo;

import org.springframework.web.multipart.MultipartFile;

public class DetailVO {
	private int gd_num;
	private String gd_actor;
	private String gd_startTime;
	private String gd_endTime;
	private String gd_title;
	private String gd_location;
	private String gd_age;
	private String gd_term;
	private String gd_plan;
	private String gd_runningtime;
	private String gd_servicenumber;
	private String gd_average;
	private int gd_price;
	private int hl_buildingnum;
	private int gr_num;
	private String poster;
	private String img1;
	private String img2;
	private String header;
	private String mini_poster;
	private String searchKeyword;
	private String deletesearchKeyword;
	
	public int getGd_num() {
		return gd_num;
	}
	public void setGd_num(int gd_num) {
		this.gd_num = gd_num;
	}
	public String getGd_actor() {
		return gd_actor;
	}
	public void setGd_actor(String gd_actor) {
		this.gd_actor = gd_actor;
	}
	public String getGd_startTime() {
		return gd_startTime;
	}
	public void setGd_startTime(String gd_startTime) {
		this.gd_startTime = gd_startTime;
	}
	public String getGd_endTime() {
		return gd_endTime;
	}
	public void setGd_endTime(String gd_endTime) {
		this.gd_endTime = gd_endTime;
	}
	public String getGd_title() {
		return gd_title;
	}
	public void setGd_title(String gd_title) {
		this.gd_title = gd_title;
	}
	public String getGd_location() {
		return gd_location;
	}
	public void setGd_location(String gd_location) {
		this.gd_location = gd_location;
	}
	public String getGd_age() {
		return gd_age;
	}
	public void setGd_age(String gd_age) {
		this.gd_age = gd_age;
	}
	public String getGd_term() {
		return gd_term;
	}
	public void setGd_term(String gd_term) {
		this.gd_term = gd_term;
	}
	public String getGd_plan() {
		return gd_plan;
	}
	public void setGd_plan(String gd_plan) {
		this.gd_plan = gd_plan;
	}
	public String getGd_runningtime() {
		return gd_runningtime;
	}
	public void setGd_runningtime(String gd_runningtime) {
		this.gd_runningtime = gd_runningtime;
	}
	public String getGd_servicenumber() {
		return gd_servicenumber;
	}
	public void setGd_servicenumber(String gd_servicenumber) {
		this.gd_servicenumber = gd_servicenumber;
	}
	public String getGd_average() {
		return gd_average;
	}
	public void setGd_average(String gd_average) {
		this.gd_average = gd_average;
	}
	public int getGd_price() {
		return gd_price;
	}
	public void setGd_price(int gd_price) {
		this.gd_price = gd_price;
	}
	public int getHl_buildingnum() {
		return hl_buildingnum;
	}
	public void setHl_buildingnum(int hl_buildingnum) {
		this.hl_buildingnum = hl_buildingnum;
	}
	public int getGr_num() {
		return gr_num;
	}
	public void setGr_num(int gr_num) {
		this.gr_num = gr_num;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getDeletesearchKeyword() {
		return deletesearchKeyword;
	}
	public void setDeletesearchKeyword(String deletesearchKeyword) {
		this.deletesearchKeyword = deletesearchKeyword;
	}
	
	//--------------------------------------
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getMini_poster() {
		return mini_poster;
	}
	public void setMini_poster(String mini_poster) {
		this.mini_poster = mini_poster;
	}
	
	//--------------------------------
		private MultipartFile uploadFile;

		public MultipartFile getUploadFile() {
			return uploadFile;
		}
		public void setUploadFile(MultipartFile uploadFile) {
			this.uploadFile = uploadFile;
		}
		@Override
		public String toString() {
			return "DetailVO [gd_num=" + gd_num + ", gd_actor=" + gd_actor + ", gd_startTime=" + gd_startTime
					+ ", gd_endTime=" + gd_endTime + ", gd_title=" + gd_title + ", gd_location=" + gd_location
					+ ", gd_age=" + gd_age + ", gd_term=" + gd_term + ", gd_plan=" + gd_plan + ", gd_runningtime="
					+ gd_runningtime + ", gd_servicenumber=" + gd_servicenumber + ", gd_average=" + gd_average
					+ ", gd_price=" + gd_price + ", hl_buildingnum=" + hl_buildingnum + ", gr_num=" + gr_num
					+ ", poster=" + poster + ", img1=" + img1 + ", img2=" + img2 + ", header=" + header
					+ ", mini_poster=" + mini_poster + ", searchKeyword=" + searchKeyword + ", deletesearchKeyword="
					+ deletesearchKeyword + ", uploadFile=" + uploadFile + "]";
		}




}
	
	
	
	
	
	

