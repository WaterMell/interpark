<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����Ʈ</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<style>
.button {
	background-color: blue;
	border: none;
	color: white;
	padding: 15px 30px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;    
	width:20%;
    margin-left:40%;
    margin-right:40%;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<br>
<c:if test="${not empty get_reserv.rv_num }">
	<form action="delete_reserv_do">
		<table style="border: 5px solid black; width:600px; margin: auto; text-align: center; font-size: 15pt;">		
			<th>1</th>
			<th>����</th>
			<tr >
				<td>���(����) �̸� </td>
				<td>${get_reserv.gd_title }</td>

				</td>
			</tr>
			<tr >
				<td>���(����) �� ��¥</td>
				<td>${get_reserv.sd_date} ${get_reserv.start_time}</td>
			</tr>
			<tr>
				<td>�¼� ��ȣ</td>
				<td> ${get_reserv.st_num}</td>
			</tr>

			<tr>
				<td>���� ����</td>
				<td>${get_reserv.st_price }</td>
			</tr>
			<tr>
				<td>���� �ð�</td>
				<td>${get_reserv.rv_date }</td>
			</tr>
		</table>
			<!-- �⺻Ű :  <input type="text" name="rv_num" value=1><br> -->
			<input type = "hidden" name="rv_num" value=${get_reserv.rv_num }><br> 
			<input type = "hidden" name="st_num" value=${get_reserv.st_num }><br>
			<input type = "hidden" name="sd_num" value=${get_reserv.sd_num }> <br>
			
			<button class="button" type="submit" >����ϱ�</button>
		
		</form>
	</c:if>
	<br>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>

</body>
</html>