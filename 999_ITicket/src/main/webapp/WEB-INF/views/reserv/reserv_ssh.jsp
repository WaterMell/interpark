<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예약하기</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<style>
* {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<br><br><br><br><br><br><br><br><br><br>
	<a href="insert_reserv" align = "center">reserv 추가</a><br>
	<a href="get_reserv_List_id?user_id=${user }" align = "center">예약 내역 조회(로그인 필수)</a><br>
	<br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="/WEB-INF/views/footer.jsp"/>

</body>
</html>