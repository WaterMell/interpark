<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--검은색nav바  -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- 회색바 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>인터파크니까 믿으니까 - 아이티켓</title>

<style>
@charset "UTF-8"; /* 기본 설정: 페이지 전체 */
* {
	margin: 0;
	padding: 0;
}

.material-symbols-outlined { /* 메뉴아이콘 */
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 48
}

header {
	background-color: #dbdbdb;

}

.header_container {
	display: flex;
	align-items: center;
	max-width: 1500px;
	margin-left: auto;
	margin-right: auto;
}

.logo_container {
	display: block;
	margin: 5px 10px;
}

.logo_container a {
	font-size: 30px;
	font-weight: 500;
	text-decoration: none;
	text-align: center;
	color: rgba(0, 0, 0, 1);
}

.nav_container {
	display: flex;
	flex: 1;
	justify-content: space-between;
	align-items: center;
}

.menu_container {
	align-content: flex-start;
	margin-left: 50px;
}

.menu_container .menu, .login {
	list-style: none;
	display: flex;
	cursor: pointer;
}

.menu_title, .menu_logout {
	display: block;
	margin: 10px;
	font-size: 20px;
	text-decoration: none;
	color: rgba(0, 0, 0, 1);
}
.menu_logout{
margin-left: 1180px;
}

.menu_index {
	display: block;
	margin: 10px 0;
	padding: 0 15px;
	text-decoration: none;
	color: rgba(0, 0, 0, 1);
}

.menu_1, .menu_2, .menu_3 {
	display: block;
	cursor: pointer;
}

.menu_1_content, .menu_2_content, .menu_3_content {
	display: none;
	list-style: none;
	font-size: 15px;
	position: absolute;
	z-index: 10;
	border-radius: 5px;
	background-color: rgba(235, 223, 200, 1);
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.4);
}

.login_container {
	align-content: flex-end;
	margin-right: 10px;
}

.footer_container {
	padding-top: 35px;
	padding-bottom: 35px;
	display: block;
	cursor: default;
	text-align: center;
	color: rgba(255, 255, 255, 1);
	background-color: rgba(25, 25, 25, 1);
}

.footer_container .footA {
	font-size: 25px;
	margin-top: 20px;
	margin-bottom: 10px;
}

.footer_container .footB {
	font-size: 15px;
}
/* 회색 바끝나는 곳 */


/* 장르바 부수적 */


.navbar-brand {
	margin-left: 600px;
}

.nav-item1 {
	margin-left: 150px;
	background-position: -41px
}

.nav-item2 {
	margin-left: 50px;
	background-position: -109px 0;
}

.nav-item3 {
	margin-left: 50px;
}

.nav-item4 {
	margin-left: 50px;
}

.nav-item5 {
	margin-left: 50px;
}

.dropdown {
	margin-left: 50px;
}

.container-fluid {
	background-color: black;
}

.dropdown-menu {
	padding: 230px;
}

.musical {
	padding-left: 90px;
}

.consert1 {
	padding-left: 90px;
}

.theater {
		padding-left: 90px;
}

.di1 {
float:left;
	
}
.
.di2 {
float: right;
text-align: center;

	
}
.left {
	margin-left: 30px;
}

.dropdown-menu {
	top: 38px;
	padding: 3px 3px 5px 4px;
	height: 391px;
	width: 400px;
	height: 495px;
	box-sizing: border-box;
	background:
		url(//ticketimage.interpark.com/TicketImage/uidev/desktop/images/common/gnb/bg_gnb.png)
		0 0 no-repeat;
}
</style>

</head>
<body>

	<header>
		<form:form  class="header_container" method="post" action="logout">
			<div class="nav_container" id="nav_menu">
				<div class="menu_container">
					<ul class="menu">
						<li class="menu_1"><a class="menu_title" onclick="movieList()">관리자 페이지</a>
							<li class="menu_1"><a class="menu_logout" href="../login">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</form:form >
	</header>
	<!-- 상단바 -->

	
	<!-- 티겟인터파크바 -->

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="collapse navbar-collapse" id="collapsibleNavbar" >
				<ul class="navbar-nav" >
					<li class="nav-item1"><a class="nav-link" href="productlist">글조회</a></li>
					<li class="nav-item2"><a class="nav-link" href="productinsert">상품등록</a></li>
					<li class="nav-item3"><a class="nav-link" href="update">상품삭제</a></li>
					<li class="nav-item4"><a class="nav-link" href="update">상품수정</a></li>
					<li class="nav-item5"><a class="nav-link" href="userlist">회원정보리스트</a></li>
					<li class="nav-item5"><a class="nav-link" href="commentlist">댓글리스트</a></li>
					<!-- 보이는장르 -->
					<!-- 랭킹에 있는 장르 -->
				</ul>
			</div>
	</nav>
	</body>
	</html>
	
	<!-- 장르 네비게이션바끝 -->