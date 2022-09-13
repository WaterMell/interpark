<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<title>Review 수정페이지</title>
<style>
	.Rcontainer {
		margin-left: 24%;
    	margin-top: 20px;
    	width: 800px;
    	height: 440px;
	}
	table {
		border-collapse: collapse;
		width: 100%;
		border-color: gray;
	}
	th {
		background-color: #FBFBFB;
	}
	table, th, td{
		border: 1px solid #33333b;
	}
	.border-none, border-none td { border: none; }
	.writeBox {
		width: 400px;
		height: 20px;
	}
	.reviewTable {
		font-size: 13px;
	}
	td {
		padding: 10px;
	}
	
	.backListBtn {
		float: left;
		border: white;
		background-color: silver;
		width: 50px;
		height: 22px;
		border-radius: 8px;
		padding: 3px;
	}
	.backListBtn a {
		text-align: center;
		color: black;
		display: block;
		text-decoration: none;
		font-size: 14.5px;
	}
	.goListBtn {
		float: right;
		background-color: lightblue;
		border-radius: 8px;
		padding: 3px;
		padding-top: 1px;
		padding-bottom: 3px;
		padding-left: 8px;
		padding-right: 8px;
		border: 1px solid black;
	}
	.realBtn {
		border: 1px solid lightblue;
		background-color: lightblue;
		font-size: 13px;
		cursor: pointer;
	}
	.Rnotice {
		border: 1px solid gray;
		padding: 2px;
		font-size: 13px;
	}
	.Rnotice strong {
		color: #DA6464;
	}
	.searchDate {
		border: 1px solid black;
		background-color: lightblue;
		color: black;
		padding: 3px;
	}
	
</style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include><!-- 최상단 상단 (로그인,회원가입,예매확인/취소, 마이페이지) -->
<div class="Rcontainer">
	<h2>공연관람후기</h2>
	<br>
	<form action="reviewUpdate" name="writeForm" method="post">
	<table class="reviewTable">
		<tr>
			<th width="100" height="40">상품명<th>
			<td>
				<input class="writeBox" id="writeTitle" type="text" name="gd_title" readonly value="${oneReview.gd_title }">
			</td>
		</tr>
		<tr>
			<th>관람일시<th>
			<td>
				<input class="writeBox" id="getDate" type="text" name="watch_date" readonly value="${oneReview.watch_date }">
			</td>
		</tr>
		<tr>
			<th>제목<th>
			<td>
				<input class="writeBox" type="text" name="rv_title" value="${oneReview.rv_title }">
			</td>
		</tr>
		<tr>
			<th>별점<th>
			<td height="30">
				<input class="scoreStar" type="radio" name="rv_likecnt" value="5">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				 <a>강력 좋음</a>
				<input class="scoreStar" type="radio" name="rv_likecnt" value="4">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<a>좋음</a>
				<input class="scoreStar" type="radio" name="rv_likecnt" value="3">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<a>보통임</a>
				<input class="scoreStar" type="radio" name="rv_likecnt" value="2">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<a>약간 아쉽</a>
				<input class="scoreStar" type="radio" name="rv_likecnt" value="1">
				<img alt="별점" src="http://ticketimage.interpark.com/TicketImage/event/community/s_star_icon.gif">
				<a>실망 그 자체</a>
			</td>
		</tr>
		<tr>
			<th>내용<th>
			<td>
				<textarea name="rv_content" rows="15" cols="105">${oneReview.rv_content }</textarea>
			</td>
		</tr>
	</table>
		<br>
		<div class="Rnotice">
			<strong>* 꼭 읽어주세요</strong>
			<p>
				게시판 운영 규정에 어긋난다고 판단되는 게시글은 사전 통보없이 블라인드 처리될 수 있습니다.
				<br>
				특히 티켓 매매 및 양도의 댓글은 발견 즉시 임의 삭제 되며 전화번호, 이메일 등의 개인정보는 악용될 우려가 있으므로 게시를 삼가 주시기 바랍니다.
			</p>
		</div>
		<br>
		<input type="hidden" name="user_id" value=${user }>
		<input type="hidden" name="gd_num" value=${oneReview.gd_num }>
		
		<%-- <input type="hidden" name="gd_num" value="${detail.gd_num }"> --%>
		
		<div class="buttons">
			<div class="backListBtn">
				<a href="#" onclick="history.back()">목록</a>
			</div>
			<div class="goListBtn">
				<a class="realBtn" onclick="checkReview()">확인</a>
			</div>
		</div>
	</form>
	<br>
	
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br>

<jsp:include page="footer.jsp"></jsp:include><!-- 하단 회사정보 등 -->
</body>
<script>
	function checkReview() {
		var writeDate = $('input[name=gd_regdate]'); //날짜
		var rvTitle = $('input[name=rv_title]'); //리뷰제목
		var scoreStar = $('input[name=rv_likecnt]').is(':checked'); //별점
		console.log("scoreStar.val() : " + scoreStar);
		var writeCon = $('input[name=rv_content]'); //내용
		
		if (writeDate.val() == ''){
			alert("날짜를 선택해주세요!");
			return false;
		}
		if (rvTitle.val() == ''){
			alert("제목을 입력해주세요!");
		}
		if (scoreStar == false){
			alert("별점을 선택해주세요!");
		}
		if (writeCon.val() == ''){
			alert("내용을 입력해주세요!");
		}
		
		writeForm.submit();
	}
</script>
</html>