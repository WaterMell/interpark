package com.iticket.app.sec;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//로그인(인증)이 성공적으로 이루어졌을때 해야 할 작업 구현
public class LoginSuccessHandler implements AuthenticationSuccessHandler{
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		List<String> roleName=new ArrayList<String>();
		for(GrantedAuthority auth:authentication.getAuthorities()) {
			roleName.add(auth.getAuthority());
		}
		if(roleName.contains("ROLE_ADMIN")) {
			response.sendRedirect(request.getContextPath()+"/admin/main");
		}else if(roleName.contains("ROLE_MEMBER")) {
			response.sendRedirect(request.getContextPath()+"/main");
		}else {
			response.sendRedirect(request.getContextPath()+"/");
		}
		
	}
}
