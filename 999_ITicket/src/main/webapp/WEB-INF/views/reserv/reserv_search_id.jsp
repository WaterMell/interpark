<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>���� ����Ʈ</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<br>
	<c:if test="${not empty get_reserv_history }">
		<c:forEach var="reserv" items="${get_reserv_history }">
		<table style="border: 5px solid black; width:600px; margin: auto; text-align: center; font-size: 15pt;">
		<th>1</th>
		<th>����</th>
		<th>���</th>
			<tr align = "center">
				<td>���(����) �̸� </td>
				<td>${reserv.gd_title }</td>
				<td rowspan="5"  bgcolor="skyblue"><a href="get_reserv_del?rv_num=${reserv.rv_num }">${reserv.rv_num }</a>
				</td>
			</tr>
			<tr align = "center">
				<td>���(����) �� ��¥</td>
				<td>${reserv.sd_date} ${reserv.start_time}</td>
			</tr>
			<tr align = "center">
				<td>�¼� ��ȣ</td>
				<td> ${reserv.st_num}</td>
			</tr>

			<tr align = "center">
				<td>���� ����</td>
				<td>${reserv.st_price }</td>
			</tr>
			<tr align = "center">
				<td>���� �ð�</td>
				<td>${reserv.rv_date }</td>
			</tr>
		</table>
		<br><br>
		</c:forEach>
	</c:if>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>

</body>
</html>