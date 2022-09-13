<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href = "../admin/style.css">

<meta charset="UTF-8">
<title>상품목록</title>

<style>
	#container { width: 1500px; margin: auto; }
	h1, h3, p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: gray; }
	.center th { text-align: center; }
	.border-none, .border-none td { border: none; }
</style>
</head>

	
<body>
<jsp:include page="../admin/mainHeader.jsp"></jsp:include>


<div id="container">
	<h1>글목록 </h1>
	<h3>윤영자페이지 상품리스트환영합니다.<a href="../login">로그아웃</a></h3>
	<!-- 검색을 위한 폼 -->
	<form action="productlist" method="get">
	<table class="border-none">
		<tr>
			<td>
				<select name="searchCondition">
					<option value="TITLE">제목</option>
				</select>
				<input type="text" name="searchKeyword" placeholder="제목을 검색하시오">
				<input type="submit" value="검색">
			</td>
		</tr>
	</table>
	</form>


<!-- 데이터 표시영역 -->

<table border="1" >
	<thead>
		<tr class="center">
			<th>공연행사번호</th>
			<th>연기자</th>
			<th>시작시간</th>
			<th>끝난시간</th>
			<th>제목</th>
			<th>장소</th>
			<th>관련 연령</th>
			<th>주최기간</th>
			<th>주최기획</th>
			<th>공연시간</th>
			<th>고객문의</th>
			<th>평점</th>
			<th>공연/행사가격</th>
			<th style="width: 80px;">글조회</th>
		</tr>
	</thead>

	<tbody>
		<c:if test="${not empty getDetailList}">
			<c:forEach var="vo" items="${getDetailList}">
				<tr>
					<td class="center"><a href="prodelete?gd_num=${vo.gd_num}"></a>${vo.gd_num}</td>
					<td class="center">${vo.gd_actor}</td>
					<td class="center">${vo.gd_startTime}</td>
					<td class="center">${vo.gd_endTime}</td>
					<td class="center"><a href="getboard?gd_num=${vo.gd_num}">${vo.gd_title}</a></td>
					<td class="center">${vo.gd_location}</td>
					<td class="center">${vo.gd_age}</td>
					<td class="center">${vo.gd_term}</td>
					<td class="center">${vo.gd_plan}</td>
					<td class="center">${vo.gd_runningtime}</td>
					<td class="center">${vo.gd_servicenumber}</td>
					<td class="center">${vo.gd_average}</td>
					<td class="center">${vo.gd_price}</td>
					<td class="center">${vo.hl_buildingnum}</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty getDetailList}">
			<tr>
				<td colspan="5" class="center">데이터가 없습니다.</td>
			</tr>
		</c:if>
	</tbody>
</table>
 <p><a href="productinsert">새글등록</a></p>
 <p><a href="update">글수정</a></p>
 



</div>	

</body>
</html>