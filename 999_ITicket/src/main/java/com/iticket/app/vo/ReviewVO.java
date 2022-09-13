package com.iticket.app.vo;

import java.util.Date;

public class ReviewVO {
	private int rv_num;
	private String rv_content;
	private int rv_likecnt;
	private String user_id;
	private int gd_num;
	private String rv_regdate;
	private int rv_cnt;
	private String rv_title;
	private String gd_title;
	private String watch_date;
	
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}
	public int getRv_likecnt() {
		return rv_likecnt;
	}
	public void setRv_likecnt(int rv_likecnt) {
		this.rv_likecnt = rv_likecnt;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getGd_num() {
		return gd_num;
	}
	public void setGd_num(int gd_num) {
		this.gd_num = gd_num;
	}
	public int getRv_cnt() {
		return rv_cnt;
	}
	public void setRv_cnt(int rv_cnt) {
		this.rv_cnt = rv_cnt;
	}
	public String getRv_title() {
		return rv_title;
	}
	public void setRv_title(String rv_title) {
		this.rv_title = rv_title;
	}
	public String getGd_title() {
		return gd_title;
	}
	public void setGd_title(String gd_title) {
		this.gd_title = gd_title;
	}
	public String getWatch_date() {
		return watch_date;
	}
	public void setWatch_date(String watch_date) {
		this.watch_date = watch_date;
	}
	public String getRv_regdate() {
		return rv_regdate;
	}
	public void setRv_regdate(String rv_regdate) {
		this.rv_regdate = rv_regdate;
	}
	@Override
	public String toString() {
		return "ReviewVO [rv_num=" + rv_num + ", rv_content=" + rv_content + ", rv_likecnt=" + rv_likecnt + ", user_id="
				+ user_id + ", gd_num=" + gd_num + ", rv_regdate=" + rv_regdate + ", rv_cnt=" + rv_cnt + ", rv_title="
				+ rv_title + ", gd_title=" + gd_title + ", watch_date=" + watch_date + "]";
	}
	
}
