<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!--아이콘  -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>마이페이지</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>

<style>

	
	h1, h3, p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: #e2514 }
	.center { text-align: center; }
	
	.border-none, .border-none td { border: none; }
	.reserve th{
	border-bottom: 1px solid #bababa; text-align: center; height: 30px;
	}
	#myinfoWrap1{
	border-bottom: 1px solid black;
    border-top: 1px solid black;
    margin-left: 20px;
	}
	.review1 ul li {
    float: left;
}
.review1 ul li a {
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-family: -apple-system, system-ui, BlinkMacSystemFont, "맑은 고딕", "Malgun Gothic", "돋움", Dotum, Helvetica, "Apple SD Gothic Neo", sans-serif;
}
.review1 ul {
	list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		min-height: 0;
		width: 800px;
		background-color: white;
		border-bottom: solid 1px #b6bdc7;
}
.reserve th {
    border-bottom: 1px solid #bababa;
    text-align: center;
    height: 30px;
    background-color: #e25147;
    color: white;
}
</style>

<!-- 	<header>
		<div class="header_container">
			<div class="nav_container" id="nav_menu">
				<div class="menu_container">
					<ul class="menu">
						<li class="menu_1"><a class="menu_title"
							onclick="movieList()">티켓</a>
					</ul>
				</div>
				<div class="login_container">
					<ul class="login">
						<li class="menu_login"><a class="menu_title"
							onclick="loginGo()">로그인</a></li>
						<li class="menu_join"><a class="menu_title" onclick="join()">회원정보</a></li>
						<li class="menu_mypage"><a class="menu_title"
							onclick="logout()">나의페이지</a></li>
						<li class="menu_join"><a class="menu_title"
							onclick="logout()">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	회색상단바
검은색 왼쪽 시작 
	<div class="bar">
		<div class="home">
			<h1>
				<img class="interpark"
					src="data:image/jpeg;base64,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">
			</h1>
		</div>
		<div class="container">
			<form action="feedcontroller?type=search" method="post">
				<span> <input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp; <input
					class="search_btn" type="submit" value="검색">
				</span>
			</form>
		</div>
	</div>
	티겟인터파크 검색은색바끝

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"
		style="height: 20px;">
		<div class="container-fluid">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" style="margin-left: 300px;">전체목록</a>
				</li>
			</ul>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item1"><a class="nav-link" href="#">뮤지컬</a></li>
					<li class="nav-item2"><a class="nav-link" href="#">콘서트</a></li>
					<li class="nav-item3"><a class="nav-link" href="#">연극</a></li>
					<li class="nav-item3"><a class="nav-link" href="#">클래식/무용</a></li>
					<li class="nav-item4"><a class="nav-link" href="#">스포츠</a></li>
					<li class="nav-item5"><a class="nav-link" href="#">전시행사</a></li>
					보이는장르
					<li class="nav-item dropdown">                                                             
					<a class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown">랭킹</a>
						<ul class="dropdown-menu">
							전체
							<li><a class="dropdown-item" href="#">뮤지컬</a></li>
							<li><a class="dropdown-item" href="#">콘서트</a></li>
							<li><a class="dropdown-item" href="#">연극</a></li>
							<li><a class="dropdown-item" href="#">클래식/무용</a></li>
							<li><a class="dropdown-item" href="#">스포츠</a></li>
							<li><a class="dropdown-item" href="#">전시행사</a></li>
						</ul>
				  </li>
					랭킹에 있는 장르
				</ul>
			</div>
		</div>
	</nav> -->
	<!-- 장르 네비게이션바끝 -->
  <jsp:include page="header.jsp"></jsp:include> 
	<!--오른쪽 왼쪽나누는곳 -->
	<div class="body" style="display: flex;">
		<div class="body_left" style="display: column;">
			<!-- 홈>마의페이지 -->
			<br>
			<ul class="dpNavi">
				<li class="home">
						<a href="mypage?user_id=${user}" target="_top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;홈&gt;<strong>마이페이지</strong>
						</a>
			</ul>
			<!-- 홈>마의페이지끝 -->
			<!--왼쪽나의 페이지 시작  -->
			<div id="myinfoWrap1">
				<br>
				<div class="mypage1">
					<h3>
						<img class="my"
							src="//openimage.interpark.com/_mypage_n/title/tit_mypage.gif"
							alt="마이페이지">
					</h3>
					<div class="level">
						<div class="myinfo_txt">
							<span class="name">황주희</span>님은 현재<br> <a
								href="http://incorp.interpark.com/member/MemberGoodService.do?_method=GoodServiceChk"
								class="grade" target="_blank"><span class="welcome">WELCOME</span></a>회원입니다.
						</div>
						<p class="btn">
							<a  href="http://incorp.interpark.com/member/MemberGoodService.do?_method=GoodServiceChk"
								target="_blank"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/btn_memb_level.gif"
								alt="등급별 혜택"></a> <a
								href="https://incorp.interpark.com/member/memberjoin.do?_method=upMemberFront"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/btn_memb_modify.gif"
								alt="회원정보수정"></a>
						</p>
					</div>
					<div class="possess">
						<ul class="left">
						</ul>
					</div>
				</div>
				<div class="bg_bottom" style="border-bottom: 1px soild gray;"></div>
			</div>
			<!-- 왼쪽나의페이지끝-->
			<!-- 예매/취소내역 -->
			<br>
			<div class="totalmy">
				<div class="lnbWrap">
					<p class="top"></p>
					<div style="margin-left: 10px;">
						<h3 style="font-size: 15px; text-align: left; margin-left: 10px;"><strong>
							예매
							</strong>	
						</h3>
					</div>
					<ul class="etc">
						<li><a style="margin-left: 20px;"
							href="http://ticket.interpark.com/Point/MyTicket/MyReview.asp"
							target="_self"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/mn_etc_02.gif"
								alt="나의 후기"></a>
						</li>
					</ul>
				</div>
			</div>
			<!--왼쪽마이페이지끝 -->
		</div>
		<!--마이 페이지끝  -->

		<!-- 내역조회 -->

		<div class="body_right">
			<br>
			<br>
			<br>
			<br>
			<div class="timeSelect">
				<!--예매 확인 취소 내역  -->
			<!-- 	<h3>
					<img
						src="//ticketimage.interpark.com/TicketImage/event/100913_my/ttl_reserveinfo.gif"
						alt="예매내역 확인·취소" style="margin-left: 210px;">
				</h3> -->
				<!-- <div class="text" style="margin-left: 210px;">
					<br>
					<p class="all">
						<strong class="txtRed">황주희</strong>님의 지난 <span class="txtDGray">일주일간</span>의
						티켓 예매내역 입니다.
					 <hr>

				</div> -->
				<!-- 조회기간선택 -->
				<div class="box">
					<!-- <form name="TopOption" id="TopOption" method="post"
						action="TPTotalBooked.asp">
						<input type="hidden" name="OtherMemberCode" id="OtherMemberCode"
							value="134347263"> <input type="hidden"
							name="KindOfGoods" id="KindOfGoods" value=""> <input
							type="hidden" name="PeriodSearch" id="PeriodSearch" value="">
						<input type="hidden" name="MemBizCD" id="MemBizCD" value="">
						<input type="hidden" name="SViewOption" id="SViewOption" value="">
						<br> -->
						<!-- <p class="title" style="margin-left: 210px;">
							<img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/ttl_times.gif"
								alt="조회기간선택">
						</p> -->
						<br>
						<!-- 7,14일기간 -->
					<!-- 	<div class="period" style="margin-left: 210px; ">
							<br>
							<div>
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_7_on.gif"
										border="0" alt="7일"
										onclick="CancelInfo.PeriodSearch('7','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_15.gif"
										border="0" alt="15일"
										onclick="CancelInfo.PeriodSearch('15','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_1month.gif"
										border="0" alt="1개월"
										onclick="CancelInfo.PeriodSearch('01','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_2month.gif"
										border="0" alt="2개월"
										onclick="CancelInfo.PeriodSearch('02','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_3month.gif"
										border="0" alt="3개월"
										onclick="CancelInfo.PeriodSearch('03','01009');"
										style="cursor: pointer;">
								<span>주문일자별</span>
								<select name="Option" id="Option"
										style="width: 65px; height: 19px;" class="select">
											<option value="B">예매일</option>
											<option value="P">공연일</option>
									</select>
								<select name="BYear" id="BYear"
											style="width: 53px; height: 19px;" class="select">
												<option value="">-----</option>
												<option value="2023">2023</option>
												<option value="2022">2022</option>
												<option value="2021">2021</option>
												<option value="2020">2020</option>
												<option value="2019">2019</option>
												<option value="2018">2018</option>
										</select>년
								<select name="BMonth" id="BMonth"
											style="width: 38px; height: 19px;" class="select">
												<option value="">-----</option>
												<option value="01">1</option>
												<option value="02">2</option>
												<option value="03">3</option>
												<option value="04">4</option>
												<option value="05">5</option>
												<option value="06">6</option>
												<option value="07">7</option>
												<option value="08">8</option>
												<option value="09">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> 월
										<img
											src="//openimage.interpark.com/ticketimage/TicketImage/common/bt_search.gif"
											onclick="CancelInfo.GetBookedList('','01009','Y');"
											border="0" style="cursor: pointer; margin-left: 7px;">
							</div>
				
						</div>7,14기간끝 -->
						
							
					<!-- </form> -->
				</div>

				<!-- //기간선택 -->
			</div>
		
			<!--  최근 구매내역-->
			<div class="shopping" >
				<h3 style="font:40px; margin-left: -400px;"><strong>나의후기내역</strong></h3>

				<div class="totalselect">
					<ul style="list-style: none;">
						<li style="margin-left: 220px; font-size: 15px;">고객님께서 영화를 관람 후 느끼신 점을 자유롭게 쓰는 공간입니다.</li>
						<li style="margin-left: 220px; font-size: 15px;">2017년, 2018년 주문 건에 대해서는 증빙 서류
							발급이 불가능 하며, 상세 주문 내역 조회가 되지 않습니다.</li>
					</ul>
					<!-- 후기내역제목-->
				<div class="review1" style="margin-left: 200px;">
					<ul style="list-style: none;">
						<li><a class="ticket1" href="#"
							style="border-bottom: 1px solid white;">후기내역</a></li>
					</ul>
				</div>
				<br> <br>
					<!-- 후기내역 -->
				<table class="reserve" border="1" style="margin-left: 220px; width: 700px;" >
							<thead>
							<tr>
								<th>제목</th>
								<th>작성일</th>
								<th>조회수</th>
								<th>내용</th>
								
								<!-- <th style="border-bottom: 1px solid #bababa;text-align: center; height: 30px;">매수</th> -->
							</tr>
							</thead>
							<tbody style="border: 1px solid red;">
							 <c:if test="${not empty reviewList}">
								<c:forEach var="reviewList" items="${reviewList}"> 
								<tr> 
									<td style="border-bottom: 1px solid #bababa; text-align: center;">${reviewList.gd_title }</td>
									<td style="border-bottom: 1px solid #bababa; text-align: center;">${reviewList.rv_regdate }</td>
									<td style="border-bottom: 1px solid #bababa; text-align: center;">${reviewList.rv_cnt }</td>
									<td style="border-bottom: 1px solid #bababa; text-align: center;">${reviewList.rv_content}</td>
								</tr>
								</c:forEach>
									</c:if> 
							</tbody>
					</table>
				</div>
			</div>
		</div>



		<!-- </div> -->
		<!--totalmy  -->

	</div>
	<!-- 전체몸 -->


</body>
</html>