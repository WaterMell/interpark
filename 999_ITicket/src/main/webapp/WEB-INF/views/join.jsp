<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입-아이티켓</title>
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<style type="text/css">
	.header {
	    height: 50px;
	    padding-top: 5px;
	    line-height: 44px;
	    border-bottom: 1px solid gray;
	}
	.contents {
		width: 500px;
    	height: 700px;
    	margin: 30px auto 50px;
	}
	.joinstyle {
		height: 35px;
		border-bottom: 1px solid gray;
		font-weight: bold;
		margin-bottom: 30px;
	}
	.joinInput {
		width: 350px;
	    height: 30px;
	    border: 0;
	    outline: 0;
	    font-size: 15px;
	    margin-left: 10px;
	}
	.join_btn {
	    width: 500px;
	    height: 50px;
	    border-radius: 10px;
	    color: #fff;
	    font-weight: bold;
	    background: #ef3e43;
	    border: 0;
	    margin-top: 30px;
	}
	input::placeholder {
	  color: #D4D4D4;
	  font-style: italic;
	}
	.join_title {
		width: 93%;
	    display: inline-block;
	    text-align: center;
        margin: 30px 0 50px;
	}
	.headerLogo {
		 display: inline-block;
	}
	.logo {
		width: 200px;
   	 	height: 50px;
	}
</style>
</head>
<body>
<div class="header">
	<a href="./" class="headerLogo">
		<span class="blind"><img src="resources/images/logo.GIF" class="logo"></span>
	</a>
</div>
<div class="contents">
	<div class="contents_join">
		<span class="join_title">정보입력</span>
		<form:form action="join" method="post" onsubmit="return joinCheck()">
			<div class="joinstyle">
				아이디<input type="text" name="user_id" id="user_id" class="joinInput" placeholder="6~20자 영문, 숫자" value="${users.user_id }">
				<div id="u_idErrorText"></div>
			</div>
			<div class="joinstyle">
				비밀번호<input type="password" id="user_pw" name="user_pw" class="joinInput" placeholder="8~12자 영문, 숫자, 특수문자"><br>
				<div id="u_pwErrorText"></div>
			</div>
			<div class="joinstyle">
				비밀번호확인<input type="password" id="user_pw1" class="joinInput" placeholder="8~12자 영문, 숫자, 특수문자"><br>
				<div id="u_pw1ErrorText"></div>
			</div>
			<div class="joinstyle">
				이름<input type="text" name="user_name" id="user_name" class="joinInput" value="${users.user_name }" placeholder="홍길동"><br>
				<div id="u_nameErrorText"></div>
			</div>
			<div class="joinstyle">
				이메일<input type="email" name="email" id="email" class="joinInput" value="${users.email }" placeholder="hong@google.com"><br>
				<div id="u_emailErrorText"></div>
			</div>
			<div class="joinstyle">
				휴대폰<input type="text" name="phone" id="phone" class="joinInput" placeholder="01012345678"><br>
				<div id="u_phoneErrorText"></div>
			</div>
			만 14세 미만 회원은 법정대리인(부모님) 동의를 받은 경우만 회원가입이 가능합니다.<br>
			<input type="submit" value="가입완료" class="join_btn">
		</form:form>
	</div>
</div>
<script type="text/javascript">
	/* $(function() {
	    $("#test").on("keyup", function() {
	        var flag = true;
	        flag = $(this).val().length > 0 ? false : true;
	        $("#btn-submit").attr("disabled", flag);
	    });
	}); */
	var RegExp = /^[a-z0-9]{6,12}$/;
	//비밀번호 유효성 검사
	var p_RegExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,20}$/;
    //이메일 유효성검사
    var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    //이름 유효성검사 정규식
    var n_RegExp = /^[가-힣]{2,15}$/;
    //전화번호 유효성검사 정규식
    //var t_RegExp = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;
     var objId = document.getElementById("user_id"); //아이디
     var objPwd = document.getElementById("user_pw"); //비번
     var objPwd1 = document.getElementById("user_pw1"); //비번
     var objName = document.getElementById("user_name"); //이름
     var objEmail = document.getElementById("email"); //메일
     var objPhone = document.getElementById("phone"); //전화번호
	 function joinCheck() {
        
        //아이디
        if(objId.value==''){
            $("#u_idErrorText").html("아이디를 입력해주세요.").css("color","red");
            objId.focus();
            return false;
        }
        if(!RegExp.test(objId.value)){ //아이디 유효성검사
        	$("#u_idErrorText").html("아이디는 6~12자의 영문 소문자와 숫자로만 입력해주세요.").css("color","red");        
            objId.focus();
            return false;
        }
      	//비밀번호
        if(objPwd.value==''){
        	$("#u_pwErrorText").html("비밀번호를 입력해주세요.").css("color","red");
            objPwd.focus();
            return false;
        }
        if (!p_RegExp.test(objPwd.value)) {
        	$("#u_pwErrorText").html("비밀번호는 6~20자의 영문자,숫자,특수문자 조합으로 입력해주세요.").css("color","red");
            objPwd.focus();
            return false;
          };
          if(objPwd1.value==''){
        	  $("#u_pw1ErrorText").html("비밀번호확인을 입력해주세요.").css("color","red");
              objPwd1.focus();
              return false;
          }
          if(objPwd.value != objPwd1.value){
        	  $("#u_pw1ErrorText").html("비밀번호가 일치하지 않습니다.").css("color","red");
              objPwd1.focus();
              return false;
          }
        //이름
          if(objName.value==''){
        	  $("#u_nameErrorText").html("이름을 입력해주세요.").css("color","red");
              objName.focus();
              return false;
          }
		//이메일
        if(objEmail.value==''){
        	$("#u_emailErrorText").html("이메일을 입력해주세요.").css("color","red");
            objEmail.focus();
            return false;
        }
        if(!e_RegExp.test(objEmail.value)){ //이메일 유효성 검사
        	$("#u_emailErrorText").html("올바른 이메일 형식이 아닙니다.").css("color","red");
            objEmail.focus();
            return false;
        }
        //전화번호
        if(objPhone.value==''){
        	$("#u_phoneErrorText").html("전화번호를 입력해주세요.").css("color","red");
            objPhone.focus();
            return false;
        }
        /* if(!t_RegExp.test(objPhone.value)){
        	$("#u_phoneErrorText").html("올바른 연락처 형식을 입력해주세요.").css("color","red");
            objPhone.focus();
            return false;
        } */
        alert("회원가입이 완료되었습니다. 아이티켓에 오신것을 환영합니다.")
        return true;

	}
	$('#user_id').change(function(){
		var objId = $("#user_id").val();
		//아이디
        if(objId==''){
            $("#u_idErrorText").html("아이디를 입력해주세요.").css("color","red");
            objId.focus();
            return false;
        }
        if(!RegExp.test(objId)){ //아이디 유효성검사
        	$("#u_idErrorText").html("아이디는 6~12자의 영문 소문자와 숫자로만 입력해주세요.").css("color","red");        
            objId.focus();
            return false;
        }
		console.log(objId);
    	$.ajax({
		type:"POST",
		url:"idInvalid",
		data:{
			"id": objId
		}, 
		dataType:"text",
		success:function(data){
			 if(data == "fail"){
				 $("#u_idErrorText").html('사용가능한 아이디입니다.').css("color","black");
			}else{
				 $("#u_idErrorText").html('이미 사용 중이거나 탈퇴한 아이디입니다.').css("color","red");
			}
		}
		});
	});
	$('#user_pw').change(function(){
		var objPwd = $("#user_pw").val();
		//비밀번호 유효성 검사
		var p_RegExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,20}$/;
		
		if(objPwd==''){
        	$("#u_pwErrorText").html("비밀번호를 입력해주세요.").css("color","red");
            objPwd.focus();
            return false;
        }else if (!p_RegExp.test(objPwd)) {
        	$("#u_pwErrorText").html("비밀번호는 6~20자의 영문자,숫자,특수문자 조합으로 입력해주세요.").css("color","red");
            objPwd.focus();
            return false;
          }else {
        	 $("#u_pwErrorText").html("");
          	return true;
         };
	});
	$('#user_pw1').change(function(){
		 if(objPwd1.value==''){
       	  $("#u_pw1ErrorText").html("비밀번호확인을 입력해주세요.").css("color","red");
             objPwd1.focus();
             return false;
         }else if(objPwd.value != objPwd1.value){
       	  $("#u_pw1ErrorText").html("비밀번호가 일치하지 않습니다.").css("color","red");
             objPwd1.focus();
             return false;
         }else {
        	 $("#u_pw1ErrorText").html("");
        	 return true;
         }
	});
	$('#user_name').change(function(){
		if(objName.value==''){
      	  $("#u_nameErrorText").html("이름을 입력해주세요.").css("color","red");
            objName.focus();
            return false;
        }else {
        	$("#u_nameErrorText").html("");
        	return true;
        }
	});
	$('#email').change(function(){
		//이메일
        if(objEmail.value==''){
        	$("#u_emailErrorText").html("이메일을 입력해주세요.").css("color","red");
            objEmail.focus();
            return false;
        }else
        if(!e_RegExp.test(objEmail.value)){ //이메일 유효성 검사
        	$("#u_emailErrorText").html("올바른 이메일 형식이 아닙니다.").css("color","red");
            objEmail.focus();
            return false;
        }else {
        	$("#u_emailErrorText").html("");
        	return true;
        }
	});
	$('#phone').change(function(){
		//전화번호
        if(objPhone.value==''){
        	$("#u_phoneErrorText").html("전화번호를 입력해주세요.").css("color","red");
            objPhone.focus();
            return false;
        }/*else
         if(!t_RegExp.test(objPhone.value)){
        	$("#u_phoneErrorText").html("올바른 연락처 형식을 입력해주세요.").css("color","red");
            objPhone.focus();
            return false;
        } */else {
        	$("#u_phoneErrorText").html("");
        	return true;
        }
	});

	
</script>
</body>
</html>