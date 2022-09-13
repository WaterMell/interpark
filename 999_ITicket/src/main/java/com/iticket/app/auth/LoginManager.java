package com.iticket.app.auth;

import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class LoginManager implements HttpSessionBindingListener{
	private static LoginManager loginManager = null;
	//로그인 한 접속자를 담는 해시테이블
	private static Hashtable loginUsers = new Hashtable();

	//기본 생성자 사용 불가능 private
	private LoginManager () {
	}
    
	//singleton pattern
	public static synchronized LoginManager getInstance() {
		if(loginManager == null) {
			loginManager = new LoginManager();
		}
		return loginManager;
	}
	//세션이 연결 될 때마다 호출 되는 메소드
		//Hashtable에 세션과 접속자 아이디 저장
		//HttpSession#setAttribute(name, value) setAttribute 메소드 호출시에 name이 처음으로 바인인 되는 것이면 자동으로 호출 됨
		//session.setAttribute("userInfo", userInfo);
		//session.setAttribute("userInfo", userInfo);
		//위 경우 valueBound 는 한번만 호출이 됨
		@Override
		public void valueBound(HttpSessionBindingEvent event) {
			//session 값을 put 한다.
			loginUsers.put(event.getSession(), event.getName());
		}
		//입력받은 아이디를 해시테이블에서 삭제
		//사용자 아이디를 받음
		public void removeSession(String userid) {
			Enumeration e = loginUsers.keys();
			HttpSession session = null;
			while(e.hasMoreElements()) {
				session = (HttpSession)e.nextElement();
				if (loginUsers.get(session).equals(userid)) {
					//세션이 비워질때 HttpSessionBindListener를 구현하는 클래스의 valueUnbound() 함수가 호출됨
					session.invalidate();
				}
			}
		}

		//이미 로그인 했는지 판별해줌
		//로그인 상태이면 true
		public boolean isUsing(String userID) {
			return loginUsers.containsValue(userID);
		}
		//로그인을 완료한 사용자 아이디를 세션에 저장하는 메소드
		public void setSession(HttpSession session, String userId) {
			//Session Binding 이벤트가 일어나는 시점
			session.setAttribute(userId, this);//자기 자신의 객체를 넣는다. 유저 자신의 아이디 앞으로 로그인 매니저를 넣어 놓는다. 
		}
		//입력받은 세션 object 아이디 리턴
		public String getUserID(HttpSession session) {
			return (String)loginUsers.get(session);
		}
		//현재 접속한 총 사용자 수 
		public int getUserCount() {
			return loginUsers.size();
		}
		//현재 접속중인 모든 사용자 아이디 출력
		public void printloginUsers() {
			Enumeration e = loginUsers.keys();
			HttpSession session = null;
			System.out.println("====================");
			int i=0;
			while(e.hasMoreElements()) {
				session = (HttpSession)e.nextElement();
				System.out.println((++i) + ". login user : " + loginUsers.get(session));
			}
			System.out.println("====================");
		}
		//현재 접속중인 모든 사용자 리스트 리턴
		public Collection getUsers() {
			Collection collection = loginUsers.values();
			return collection;
		}

		/*
		 * 개체 바인딩 해제 중임을 알림. 세션을 통해 세션을 식별하십시오.
		 * */
		@Override
		public void valueUnbound(HttpSessionBindingEvent event) {
			loginUsers.remove( event.getSession( ) );
		}
		
}
