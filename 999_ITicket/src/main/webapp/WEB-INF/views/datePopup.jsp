<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>날짜 선택 팝업</title>
<style>
	table { border-collapse: collapse; }
	th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th {
		background-color: lightgray;
	}
</style>
<script>
	function setReservDate(elementId) {
		/* let temp = $('input:radio[name="chooseDate"]:checked').val();
		alert("temp: " + temp);
		opener.document.getElementById("setDate").value = document.getElementById("getDate").value;
		 */
		let arr = new Array();
		arr = document.getElementsByTagName("input");
		let value = "";
		for (var i=0; i<arr.length; i++) {
			if(arr[i].checked){
				value = arr[i].value;
				break;
			}
		}
		window.close();
		window.opener.document.getElementById(elementId).value = value;
	}
</script>
</head>
<body>
	<a>의 예매내역</a>
	<table>
		<tr>
			<th><strong>선택</strong></th>
			<th><strong>예약번호</strong></th>
			<th><strong>관람일시</strong></th>
		</tr>
		<tbody>
			<c:if test="${not empty reservDate}">
				<c:forEach var="dateR" items="${reservDate }">
					<tr>
						<td><input type="radio" name="chooseDate" id="setDate" value="${dateR.sd_date } ${dateR.start_time }"></td>
						<td>${dateR.rv_num }</td>
						<td>${dateR.sd_date } ${dateR.start_time }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty reservDate }">
				<tr>
					<td>데이터가 없습니다.</td>
				</tr>
			</c:if>
		</tbody>
	</table>
	<input type="button" value="확인" onclick="setReservDate('getDate')">
	<input type="button" value="취소" onclick="window.close()">
</body>
</html>