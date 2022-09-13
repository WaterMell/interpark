<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인터파크니까 믿으니까 - 아이티켓</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<script type="text/javascript">
	window.onpageshow = function(event) {
	    if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
	        location.reload();
	    }
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include><!-- 최상단 상단 (로그인,회원가입,예매확인/취소, 마이페이지) -->
	<jsp:include page="nav.jsp"></jsp:include><!-- 매거진 -->
	<jsp:include page="container.jsp"></jsp:include><!-- 메인 컨테이너 -->
	<jsp:include page="footer.jsp"></jsp:include><!-- 하단 회사정보 등 -->
</body>
</html>