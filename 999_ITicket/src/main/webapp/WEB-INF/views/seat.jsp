<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>좌석좌석좌석좌석</title>
</head>
<body>
	좌석좌석좌석좌석좌석좌석
	<br>

	<c:if test="${not empty getseatList }">
		<c:forEach var="seat" items="${getseatList }">
			<tr>
				<td>gd_num : ${seat.st_num }</td>
				<br>
				<td>gd_title : ${seat.st_able }</td>
				<br>
				<td>gr_num : ${seat.hl_buildingnum}</td>
				<br>
				<br>
				<br>
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty getseatList }">
		<tr>
			<td>좌석 데이터가 없습니다</td>
		</tr>
	</c:if>

</body>
</html>