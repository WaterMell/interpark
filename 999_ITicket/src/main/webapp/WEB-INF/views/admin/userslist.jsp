<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원리스트</title>
 <style>
	
	h1, h3, p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
		width: 1000px;
		height: 50px;
	}
	th { background-color: grey; }
	.center { text-align: center;  }
	
	.border-none, .border-none td { border: none; }
	.border-none{
	margin-left: 650px;
	}
	
	
</style> 
</head>
<body>
<jsp:include page="../admin/mainHeader.jsp"></jsp:include>
<div id="container">
	<h1>회원목록</h1>
	<h3>회원관리리스트입니다.<a href="../login"></a></h3>
		<!-- 검색을 위한 폼 -->
	<form action="userslist" method="get">
	<table class="border-none">
		<tr>
			<td>
				<select name="searchCondition">
					<option value="user_ld">유저아이디</option>
				</select>
				<input type="text" name="userlistKeyword" placeholder="아이디을 검색하시오">
				<input type="submit" value="검색">
			</td>
		</tr>
	</table>
	</form>


<!-- 데이터 표시영역 -->

<table border="1">
	<thead>
		<tr style="align=center, margin-left: 20px;">
			<th style="text-align: center;">유저아이디</th>
			<th style="text-align: center;">유저이름</th>
			<th style="text-align: center;">이메일</th>
			<th style="text-align: center;">폰</th>
			<th style="text-align: center;">가입일</th>
			<th style="text-align: center;">관리자/유저유무</th>
		</tr>
	</thead>

	<tbody>
		<c:if test="${not empty userList}">
			<c:forEach var="userList" items="${userList}">
				<tr>
					<td class="center">${userList.user_id}</td>
					<td class="center">${userList.user_name}</td>
					<td class="center">${userList.email}</td>
					<td class="center">${userList.phone}</td>
					<td class="center">${userList.regdate}</td>
					<td class="center">${userList.enabled}</td>
					
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty userList}">
			<tr>
				<td colspan="5" class="center">데이터가 없습니다.</td>
			</tr>
		</c:if>
	</tbody>
</table>
 <p><a href="insertDetail.jsp">새글등록</a></p>



</div>	

</body>
</html>