<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�¼��¼��¼��¼�</title>
</head>
<body>
	�¼��¼��¼��¼��¼��¼�
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
			<td>�¼� �����Ͱ� �����ϴ�</td>
		</tr>
	</c:if>

</body>
</html>