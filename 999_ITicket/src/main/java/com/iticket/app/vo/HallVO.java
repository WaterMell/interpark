package com.iticket.app.vo;

public class HallVO {
	private int HL_BUILDINGNUM;
	private int HL_TOTSEAT;
	
	public int getHL_BUILDINGNUM() {
		return HL_BUILDINGNUM;
	}
	public void setHL_BUILDINGNUM(int hL_BUILDINGNUM) {
		HL_BUILDINGNUM = hL_BUILDINGNUM;
	}
	public int getHL_TOTSEAT() {
		return HL_TOTSEAT;
	}
	public void setHL_TOTSEAT(int hL_TOTSEAT) {
		HL_TOTSEAT = hL_TOTSEAT;
	}
	@Override
	public String toString() {
		return "HallVO [HL_BUILDINGNUM=" + HL_BUILDINGNUM + ", HL_TOTSEAT=" + HL_TOTSEAT + "]";
	}
	

	
	
}
