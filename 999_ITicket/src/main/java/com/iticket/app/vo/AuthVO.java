package com.iticket.app.vo;

public class AuthVO {
	private String authority;
	private String user_id;
	public AuthVO() {}
	public AuthVO(String authority, String user_id) {
		super();
		this.authority = authority;
		this.user_id = user_id;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "AuthVO [authority=" + authority + ", user_id=" + user_id + "]";
	}
	
	
}
