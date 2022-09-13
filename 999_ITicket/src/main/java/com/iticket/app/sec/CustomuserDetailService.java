package com.iticket.app.sec;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.iticket.app.service.impl.MUsersService;

public class CustomuserDetailService implements UserDetailsService{
	@Autowired private MUsersService service;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		CustomUserDetail userDetail=service.userDetail(username);
		return userDetail;
	}
}
