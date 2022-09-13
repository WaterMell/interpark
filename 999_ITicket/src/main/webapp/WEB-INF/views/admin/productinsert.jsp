<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글등록</title>
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

<div id="container">
	<h1>글등록 [productinsert]</h1>
	<p><a href="../login">로그아웃</a></p>
	
	<form action="getinsert"method="post" enctype="multipart/form-data"><!--  여기서 부터해야됨-->
	<table>
		<!-- <tr>
			<th width="70">공연행사번호</th>
			<td>
				<input type="text" name="gd_num">
			</td>
		</tr> -->
		<tr>
			<th>연기자</th>
			<td>
				<input type="text" name="gd_actor">
			</td>
		</tr>
		 <tr>
			<th>시작시간</th>
			<td>
				<input type="text" name="gd_startTime">
			</td>
		</tr>
		<tr>
			<th>끝난시간</th>
			<td>
				<input type="text" name="gd_endTime">
			</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="gd_title">
			</td>
		</tr>
		<tr>
			<th>장소</th>
			<td>
				<input type="text" name="gd_location">
			</td>
		</tr>
		<tr>
			<th>관련연령</th>
			<td>
				<input type="text" name="gd_age">
			</td>
		</tr>
		<tr>
			<th>주최기간</th>
			<td>
				<input type="text" name="gd_term">
			</td>
		</tr>
		<tr>
			<th>주최기획</th>
			<td>
				<input type="text" name="gd_plan">
			</td>
		</tr>
		<tr>
			<th>공연시간</th>
			<td>
				<input type="text" name="gd_runningtime">
			</td>
		</tr>
		<tr>
			<th>고객문의번호</th>
			<td>
				<input type="text" name="gd_servicenumber">
			</td>
		</tr>
		<tr>
			<th>공연/행사가격</th>
			<td>
				<input type="text" name="gd_price">
			</td>
		</tr>
		<tr>
			<th>상영/행사장</th>
			<td>
				<input type="text" name="hl_buildingnum">
			</td>
		</tr>
		<tr>
			<th>장르번호</th>
			<td>
				<input type="text" name="gr_num">
			</td>
		</tr>
		<tr>
			<th>업로드</th>
			<td>
				<input type="file" name="uploadFile">
			</td>
		</tr>
		<tr>
			<td colspan="2" class="center">
				<input type="submit" value="새글 등록">
			</td>
		</tr>
	</table>
	</form>
	<p>
		<a href="productlist">글 목록 </a>
	</p>
	
</div>	
</body>
</html>