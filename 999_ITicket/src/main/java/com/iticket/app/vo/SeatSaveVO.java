package com.iticket.app.vo;

public class SeatSaveVO {
	private int ss_num;
	private int seat_able;
	private int st_num;
	private int sd_num;
	
	public int getSs_num() {
		return ss_num;
	}
	public void setSs_num(int ss_num) {
		this.ss_num = ss_num;
	}
	public int getSeat_able() {
		return seat_able;
	}
	public void setSeat_able(int seat_able) {
		this.seat_able = seat_able;
	}
	public int getSt_num() {
		return st_num;
	}
	public void setSt_num(int st_num) {
		this.st_num = st_num;
	}
	public int getSd_num() {
		return sd_num;
	}
	public void setSd_num(int sd_num) {
		this.sd_num = sd_num;
	}
	@Override
	public String toString() {
		return "SeatSaveVO [ss_num=" + ss_num + ", seat_able=" + seat_able + ", st_num=" + st_num + ", sd_num=" + sd_num
				+ "]";
	}
	
	
	
}
