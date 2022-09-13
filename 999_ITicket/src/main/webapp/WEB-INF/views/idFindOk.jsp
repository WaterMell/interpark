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
	.Search_resultleft {
		display: block;
    	float: left;
    	font-size: 14px;
    	font-weight: bold;
	}
	.Search_resultright {
	 	text-align: right;
	    display: block;
	    font-size: 14px;
	    color: gray;
	}
	.Search_result_title {
		font-weight: bold;
    	margin: 15px 0;
	}
	.notiText {
		margin: 15px 0;
    	color: gray;
	}
	.Search_result {
		padding-left: 10px;
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
		<div class="Search_result_title">
			아이디 찾기 결과
		</div>
		<div class="Search_result">
			<span class="Search_resultleft">${user.user_id }</span><span class="Search_resultright">${user.regdate } 가입</span>
		</div>
		<div class="notiText">
			개인정보 보호를 위해 아이디 뒷자리는 ***로 표시합니다.
		</div>
		<div>
			<button onclick="winClose()" class="FindBtn">로그인</button>
		</div>
	</div>
<script type="text/javascript">
	function winClose() {
		window.close();
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
</script>
</body>
</html>