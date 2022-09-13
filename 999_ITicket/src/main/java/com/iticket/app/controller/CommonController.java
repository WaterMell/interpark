package com.iticket.app.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.iticket.app.auth.NaverLogin;
import com.iticket.app.sec.CustomuserDetailService;
import com.iticket.app.service.impl.MUsersService;
import com.iticket.app.vo.UsersVO;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class CommonController {
	@NonNull
	@Autowired
	private MUsersService service;
	@NonNull
	@Autowired
	private CustomuserDetailService cusd;
    // 이메일 인증-
    //@NonNull
    //private JavaMailSender mailSender;
	// 네이버
	@NonNull
	private NaverLogin naverlogin;
	private String apiResult = null;

	// 네이버 로그인 성공시 callback호출
	@RequestMapping(value="/logincallback", method= {RequestMethod.GET,RequestMethod.POST})
        public String callBack(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, HttpServletRequest request,Principal principal) throws Exception{
            OAuth2AccessToken oauthToken;
            oauthToken = naverlogin.getAccessToken(session, code, state);
            
            //로그인 사용자 정보 읽어오기 
            // String형식의 json데이터
            apiResult = naverlogin.getUserProfile(oauthToken);
            /**
             * apiResult json 구조 {"resultcode":"00", "message":"success",
             * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
             **/
            
            //2. String 형식인 apiResult를 json형태로 바꿈 
            JSONParser parser = new JSONParser();
            Object obj = parser.parse(apiResult);
            JSONObject jsonObj = (JSONObject)obj;
            
            //3.데이터 파싱
            // Top레벨 단계 _response 파싱
            JSONObject response_obj = (JSONObject)jsonObj.get("response");
 
            // 네이버에서 주는 고유 ID
            String naverId = (String) response_obj.get("id");
            // 네이버에서 설정된 사용자 이름
            String naverNickname = (String) response_obj.get("name");
            // 네이버에서 설정된 이메일
            String naverEmail = (String) response_obj.get("email");
            
            //네이버 같은경우 진짜ID+@ 형식이기 때문에 문자열 잘라서 id값을 추출하는 작업을 펼친다.
            String target ="@";
            int target_num = naverEmail.indexOf(target);
            //네이버 진짜 ID
            String newId=(String) naverEmail.substring(0,target_num);
            
            UsersVO member = new UsersVO();
            member.setUser_id(newId); //아이디
            member.setUser_name(naverNickname); //닉네임
            member.setEmail(naverEmail); //이메일
            member.setNaverLogin(naverId); //네이버 고유id번호
            System.out.println(member);
            //네이버로 연동된 회원정보 찾기 =>[가입된 이메일] 또는 [네이버 고유번호id]를 조회하여 비교
            System.out.println(service.naverChk(member));
            UsersVO naverIdChk = service.naverChk(member);
            System.out.println(naverIdChk);
            //1.쌩판 홈페이지에 연동된 정보가 없는경우=>등록된 네이버 이메일x,네이버고유번호idx , 회원 가입절차 시작
            if (naverIdChk == null) {
                    session.setAttribute("users", member);
                    return "join";
            //2.가입된 이메일은 있으나 네이버와의 연동이 안된경우        
            }else if(naverIdChk.getNaverLogin() == null && naverIdChk.getEmail() !=null) {
                    //2-1 가입된 계정에 네이버 연동 진행
                    service.updateN(member);
                    //2-2 연동 끝났으면 자동 로그인
                    //네이버 고유id번호를 가진 계정의 id값을 추출하여 자동로그인 설정
                    String id=service.naverChk(member).getUser_id();
                    UserDetails navervo = (UserDetails)cusd.loadUserByUsername(id);
                    System.out.println(id);
                    Authentication authentication = new UsernamePasswordAuthenticationToken(navervo, navervo.getPassword(),
                            navervo.getAuthorities());
                    SecurityContext securityContext = SecurityContextHolder.getContext();
                    securityContext.setAuthentication(authentication);
                    session = request.getSession(true);
                    session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
                    return "redirect:main";
 
            //3.둘다 아니라면 네이버로 가입 된 상태임. 네이버 로그인시 바로 로그인됨
            }else {
                    //가입된 상태에서 네이버아이디=웹사이트아이디 인지, 혹은 다른아이디인지(네이버 고유번호로 id찾음)
                    //시큐리티의 파라미터로 id값을 결정해서 로그인처리를 한다.
                    String id=service.naverChk(member).getUser_id()==null?newId:service.naverChk(member).getUser_id();
                    UserDetails navervo = (UserDetails)cusd.loadUserByUsername(id);
                    System.out.println(newId);
                    Authentication authentication = new UsernamePasswordAuthenticationToken(navervo, navervo.getPassword(),
                            navervo.getAuthorities());
                    SecurityContext securityContext = SecurityContextHolder.getContext();
                    securityContext.setAuthentication(authentication);
                    session = request.getSession(true);
                    session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
                    return "redirect:main";
            }
	}
	// 회원가입 창으로 이동
//	@GetMapping("customRegister")
//	public void Register(Model model, HttpSession session) {
//        log.info("회원가입 창으로 이동");
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		// String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		// log.info("네이버: " + naverAuthUrl);
		// 네이버
		// model.addAttribute("url", naverAuthUrl);
//	}

	// 로그인 창으로 이동
//	@GetMapping("/customlogin")
//	public String login(String error, String logout, Model model, HttpSession session) {
////        log.info("error: " + error);
////        log.info("logout: " + logout);
//		String naverUrl = naverlogin.getAuthorizationUrl(session);
//		System.out.println(naverUrl);
//		model.addAttribute("naverUrl", naverUrl);
//		return "customlogin";
//	}

//// 회원 등록 
//@PostMapping("/customRegister") 
//public String Register(MemberVO vo, RedirectAttributes rttr) { 
//log.info("회원등록 post"); 
//service.insert(vo); 
//
//return "redirect:/member/customLogin"; 
//}

}
