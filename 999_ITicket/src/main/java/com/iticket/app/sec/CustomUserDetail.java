package com.iticket.app.sec;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.iticket.app.vo.AuthVO;

public class CustomUserDetail implements UserDetails{
	private String user_id;
	private String user_pw;
	private String enabled;
	private List<AuthVO> authoList;
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> auths=new ArrayList<GrantedAuthority>();
		for(AuthVO vo:authoList) {
			auths.add(new SimpleGrantedAuthority(vo.getAuthority()));
		}
		//사용자의 권한을 담은 Collection객체 리턴하기
		return auths;
	}

	@Override
	public String getPassword() {
		return user_pw;
	}

	@Override
	public String getUsername() {
		return user_id;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	
}
