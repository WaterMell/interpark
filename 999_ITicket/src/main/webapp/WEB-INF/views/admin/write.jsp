<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<style>
	#container { width: 700px; margin: auto; }
	h1, h3, p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: gray; }
	.center { text-align: center; }
	
	.border-none, .border-none td { border: none; }
</style>
</head>
<body>
<jsp:include page="../admin/mainHeader.jsp"></jsp:include>
<div id="container">
	<h1>write</h1>
	<p><a href="logout.do">로그아웃</a></p>
	
	<form action="updateBoard" method="post">
		<input type="hidden" name="gd_num" value="${board.gd_num}"><%-- <a href="productdelete?gd_num=${board.gd_num}">삭제</a> --%>
	<table>
		<tr>
			<th>연기자</th>
			<td><input  type="text" name="gd_actor" value="${board.gd_actor}"></td>
		</tr>
		<tr>
			<th>시작시간</th>
			<td><input type="text" name="gd_startTime" value="${board.gd_startTime}"></td>
		</tr>
		<tr>
			<th>끝난시간</th>
			<td><input type="text" name="gd_endTime" value="${board.gd_endTime}"></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="gd_title" value="${board.gd_title}"></td>
		</tr>
		<tr>
			<th>장소</th>
			<td><input type="text" name="gd_location" value="${board.gd_location}"></td>
		</tr>
		<tr>
			<th>관련연령</th>
			<td><input type="text" name="gd_age" value="${board.gd_age}"></td>
		</tr>
		<tr>
			<th>주최기간</th>
			<td><input type="text" name="gd_term" value="${board.gd_term}"></td>
		</tr>
		<tr>
			<th>주최기획</th>
			<td><input  type="text" name="gd_plan" value="${board.gd_plan}"></td>
		</tr>
		<tr>
			<th>공연시간</th>
			<td><input  type="text" name="gd_runningtime" value="${board.gd_runningtime}"></td>
		</tr>
		<tr>
			<th>고객문의번호</th>
			<td><input type="text" name="gd_servicenumber"value="${board.gd_servicenumber}"></td>
		</tr>
		<tr>
			<th>공연/행사가격</th>
			<td><input type="text" name="gd_price" value="${board.gd_price}"></td>
		</tr>
		<tr>
			<th>상영/행사장</th>
			<td><input type="text" name="hl_buildingnum" value="${board.hl_buildingnum}"></td>
		</tr>
		<tr>
			<th>장르번호</th>
			<td><input type="text" name="gr_num" value="${board.gr_num}"></td>
		</tr>
		<tr>
			<td colspan="2" class="center" >
				<input type="submit"  value="글 수정"> 
			<a href="productdelete?gd_num=${board.gd_num}">삭제</a>
			</td>
		</tr>
	</table>
	</form>
	
	<p>
		<a href="productinsert">상품등록</a>
		<a href="prodelete" >글삭제</a>
		<a href="productlist">글조회</a>
		
	</p>
</div>	
</body>
</html>