<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기-아이티켓</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
	body {
		margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    vertical-align: baseline;
	    background: transparent;
	}
	.popHeaderWrap {
		position: relative;
	    width: 100%;
	    height: 50px;
	    background-color: #aaa;
	}
	.popTitle {
		display:block;
		line-height: 50px;
	    font-size: 22px;
	    font-weight: normal;
	    color: #fff;
	    text-align: center;
	}
	.btnClose {
		cursor: pointer;
		display: inline-block;
	    width: 50px;
	    height: 50px;
	    background: url(//openimage.interpark.com/.ui/openId/pc/popup/btn_close.png) no-repeat center center #999;
	    text-indent: -500em;
	    float: right;
	}
	.contentsWrap {
		padding: 30px 20px;
	    box-sizing: border-box;
	    background-color: #fff;
	}
	.SearchTab {
		display: inline-block;
    	width: 100%;
	    line-height: 45px;
	    text-align: center;
	    font-size: 15px;
	}
	.SearchTab_id, .SearchTab_pw {
		display: inline-block;
	    width: 250px;
	}
	.SearchTab_id {
	    border: 1px solid red;
    	border-bottom: white;
    	float: left;
    	color: #ef3e42;
	}
	.SearchTab_pw {
		color: gray;
		border: 1px solid #e9e5e5;
		border-bottom: 1px solid red;
		float: left;
		background-color: snow;
		text-decoration: none;
	}
	.Search_notice {
		padding: 15px 0;
	    font-size: 13px;
	    color: #AAAAAA;
	}
	.findBtn {
		border: 0;
    	background: white;
    	width: 500px;
	    height: 40px;
	    text-align: left;
	    cursor: pointer;
	}
	.Search_title {
    	border-bottom: 1px solid #e3dada;
	}
	.Search_contents {
		display: none;
	}
	.iinput {
		width: 500px;
	    height: 35px;
	    margin: 5px 0;
	    border: 1px solid gainsboro;
	    padding-left: 10px;
	}
	.FindBtn {
		width: 514px;
	    height: 45px;
	    background: #ef3e42;
	    border: none;
	    color: #fff;
	    font-size: 15px;
	}
</style>
</head>
<body>
	<div class="popHeaderWrap">
		<span class="popTitle">아이디 찾기<a class="btnClose" onclick="winClose()"></a></span>
	</div>
	<div class="contentsWrap">
		<div class="SearchTab">
			<a class="SearchTab_id">아이디 찾기</a>
			<a href="pwFind" class="SearchTab_pw">비밀번호 찾기</a><br>
		</div>
		<div class="Search_notice">
			아이디를 찾을 방법을 선택해주세요.<br>
		</div>
		<div class="Search_title">
			<button type="button" class="findBtn" id="Search">등록된 휴대폰번호로 찾기</button>
			<div class="Search_contents" id="Search_contents">
				<form action="idFindPhone" method="post" onsubmit="return findCheck()">
					<input type="text" name="user_name" id="user_name" placeholder="이름" class="iinput"><br>
					<input type="text" name="phone" id="phone" placeholder="휴대폰번호 (-없이 입력)" class="iinput"><br>
					<div id="find_filter"></div>
				<form action="idFindPhone" method="post">
					<input type="text" name="user_name" id="user_name" placeholder="이름" class="iinput"><br>
					<div id="u_nameErrorText"></div>
					<input type="text" name="phone" id="phone" placeholder="휴대폰번호 (-없이 입력)" class="iinput"><br>
					<div id="u_phoneErrorText"></div>
					<input type="submit" value="확인" class="FindBtn"><br>
				</form>
			</div>
		</div>
		<div class="Search_title">
			<button onclick="findEmail" class="findBtn" id="Search1">등록된 이메일로 찾기</button>
		</div>
		<div class="Search_contents" id="Search_contents1">
			<form action="idFindEmail" method="post">
				<input type="text" name="user_name" placeholder="이름" class="iinput"><br>
				<input type="text" name="email" placeholder="이메일" class="iinput"><br>
				<div id="find_filter">${msg }</div>
				<input type="text" name="user_name" id="user_name" placeholder="이름" class="iinput"><br>
				<div id="u_nameErrorText"></div>
				<input type="text" name="email" id="email" placeholder="이메일" class="iinput"><br>
				<div id="u_emailErrorText"></div>
				<input type="submit" value="확인" class="FindBtn"><br>
			</form>
		</div>
	</div>
<script type="text/javascript">
	function winClose() {
		window.close();
	}
	function idFindPhone() {
		location.href = "idFindEmailOk";
	}
	$(function() {
		$("#Search").click(function(){
			$("#Search_contents1").slideUp("fast", function(){
				$("#Search_contents").slideToggle("fast");
			});
		});
		$("#Search1").click(function(){
			$("#Search_contents").slideUp("fast", function(){
				$("#Search_contents1").slideToggle("fast");
			});
		});
	});
	function findCheck() {
		let name = $('#user_name');
		let phone = $('#phone');
		if(name.val() == ''){
			$('#find_filter').html("이름을 입력해주세요.");
			name.focus;
			return false;
		}else if(phone.val() == ''){
			$('#find_filter').html("휴대폰번호을 입력해주세요.");
			phone.focus;
			return false;
		}
		return true;
	}
	$("#user_name").change(function(){
		var user_name = $("#user_name").val();
		if(user_name == ""){
			$("#u_nameErrorText").html("이름을 입력해주세요.").css("color","red");
			user_name.focus();
			return false;
		}else {
			$("#u_nameErrorText").html("");
			return true;
		}
	});
</script>
</body>
</html>