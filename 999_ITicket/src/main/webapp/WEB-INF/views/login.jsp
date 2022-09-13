<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<script type="text/javascript">
	window.onpageshow = function(event) {
	    if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
	        location.reload();
	    }
	}
</script>
<style type="text/css">
	.loginForm {
		width: 450px;
	    height: 750px;
	    margin: 0 auto;
	    text-align: center;
	    margin-top: 400px;
	    position: relative;
	}
	.iInput {
	 	width: 400px;
    	height: 30px;
    	margin-bottom: 10px;
	}
	.loginBtn {
		width: 410px;
    	height: 40px;
    	background-color: red;
	    border: none;
	    border-radius: 5px;
	    margin: 10px 0;
	    color: white;
	    font-size: 15px;
	}
	.login_ckboxForm, .login_findjoin {
		text-align: left;
    	margin-left: 20px;
    	margin: 10px;
	}
	.findjoin {
		text-decoration: none;
    	color: black;
	}
	.login_filter {
		color: red;
	    text-align: left;
	    margin-left: 20px;
	}
	.naver_id_login {
		margin: 20px 0;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="loginForm">
		<form:form method="post" action="login" class="login" onsubmit="return loginCheck()">
			<div class="login_iInput">
				<input type="text" name="username" id="username" placeholder="아이디" class="iInput" maxlength="100"><br>
				<input type="password" name="password" id="password" placeholder="비밀번호" class="iInput" maxlength="100"><br>
				<div id="login_filter" class="login_filter"></div>
				<input type="submit" value="로그인" class="loginBtn" ><br>
			</div>
			<div class="login_ckboxForm">
				<label for="remember-me"><input type="checkbox" class="login_ckbox" name="remember-me" id="remember-me"> 자동로그인</label> 
				<label for="saveId"><input type="checkbox" class="login_ckbox" name="checkId" id="saveId" > 아이디저장</label>
			</div>
		</form:form>
		<div class="login_findjoin">
			<a href="#" class="findjoin" onclick="idFind()">아이디 찾기</a> | 
			<a href="#" class="findjoin" onclick="pwFind()">비밀번호 찾기</a> | 
			<a href="join" class="findjoin">회원가입</a>
			<div class="naver_id_login">
				<a href="${naverUrl }"><img src="resources/images/naverBtn.png"></a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
	function idFind() {
		window.open("idFind","인터파크","popup,width=550,height=800");
	}
	function pwFind() {
		window.open("pwFind","인터파크","popup,width=550,height=800");
	}
	$(function() {
	    fnInit();
	      
	});
	function loginCheck(){
		var id = $('input[name=username]'); //아이디
		var pwd = $('input[name=password]'); //비밀번호
		if(id.val() == ''){
			$("#login_filter").html('아이디를 입력해주세요')
			id.focus();
			return false;
		}else if(pwd.val() == ''){
			$("#login_filter").html('비밀번호를 입력해주세요');
			pwd.focus();
			return false;
		}
		saveid();
		return true;
	}
 function fnInit(){
     var cookieid = getCookie("saveid");
     console.log(cookieid);
     if(cookieid !=""){
         $("input:checkbox[id='saveId']").prop("checked", true);
         $('#username').val(cookieid);
     }
     
 }    
 function setCookie(name, value, expiredays) {
     var todayDate = new Date();
     todayDate.setTime(todayDate.getTime() + 0);
     if(todayDate > expiredays){
         document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
     }else if(todayDate < expiredays){
         todayDate.setDate(todayDate.getDate() + expiredays);
         document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
     }
     
     
     console.log(document.cookie);
 }
 function getCookie(Name) {
     var search = Name + "=";
     console.log("search : " + search);
     
     if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
         offset = document.cookie.indexOf(search);
         console.log("offset : " + offset);
         if (offset != -1) { // 쿠키가 존재하면 
             offset += search.length;
             // set index of beginning of value
             end = document.cookie.indexOf(";", offset);
             console.log("end : " + end);
             // 쿠키 값의 마지막 위치 인덱스 번호 설정 
             if (end == -1)
                 end = document.cookie.length;
             console.log("end위치  : " + end);
             
             return unescape(document.cookie.substring(offset, end));
         }
     }
     return "";
 }
 function saveid() {
     var expdate = new Date();
     if ($("#saveId").is(":checked")){
         expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
         setCookie("saveid", $("#username").val(), expdate);
         }else{
        expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
         setCookie("saveid", $("#username").val(), expdate);
          
     }
 }
</script>
<c:if test="${not empty param.error }">
	<script>
		$("#login_filter").html("아이디 혹은 비밀번호가 맞지 않습니다.");
		
	</script>
</c:if>
</body>
</html>