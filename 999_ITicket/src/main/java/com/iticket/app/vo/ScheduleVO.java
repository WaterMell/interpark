package com.iticket.app.vo;

import java.util.Date;

public class ScheduleVO {
	private int sd_num;
	private Date sd_date;
	private int gd_num;
	private String start_time;
	private int hl_buildingnum;
	
	
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
	public int getGd_num() {
		return gd_num;
	}
	public void setGd_num(int gd_num) {
		this.gd_num = gd_num;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public int getHl_buildingnum() {
		return hl_buildingnum;
	}
	public void setHl_buildingnum(int hl_buildingnum) {
		this.hl_buildingnum = hl_buildingnum;
	}
	@Override
	public String toString() {
		return "ScheduleVO [sd_num=" + sd_num + ", sd_date=" + sd_date + ", gd_num=" + gd_num + ", start_time="
				+ start_time + ", hl_buildingnum=" + hl_buildingnum + "]";
	}
	

	
	
}
