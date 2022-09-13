package com.iticket.app.vo;

import java.util.Date;

public class TotaltempVO {
	private int st_num;
	private int st_able;
	private int hl_buildingnum;
	private int st_price;
	private int sd_num;
	private Date sd_date;
	private String start_time;
	private String gd_title;
	
	public int getSt_num() {
		return st_num;
	}
	public void setSt_num(int st_num) {
		this.st_num = st_num;
	}
	public int getSt_able() {
		return st_able;
	}
	public void setSt_able(int st_able) {
		this.st_able = st_able;
	}
	public int getHl_buildingnum() {
		return hl_buildingnum;
	}
	public void setHl_buildingnum(int hl_buildingnum) {
		this.hl_buildingnum = hl_buildingnum;
	}
	public int getSt_price() {
		return st_price;
	}
	public void setSt_price(int st_price) {
		this.st_price = st_price;
	}
	public int getSd_num() {
		return sd_num;
	}
	public void setSd_num(int sd_num) {
		this.sd_num = sd_num;
	}
	public Date getSd_date() {
		return sd_date;
	}
	public void setSd_date(Date sd_date) {
		this.sd_date = sd_date;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getGd_title() {
		return gd_title;
	}
	public void setGd_title(String gd_title) {
		this.gd_title = gd_title;
	}
	@Override
	public String toString() {
		return "TotaltempVO [st_num=" + st_num + ", st_able=" + st_able + ", hl_buildingnum=" + hl_buildingnum
				+ ", st_price=" + st_price + ", sd_num=" + sd_num + ", sd_date=" + sd_date + ", start_time="
				+ start_time + ", gd_title=" + gd_title + "]";
	}
	
	
	
}
