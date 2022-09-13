<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${keyword } - 아이티켓</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
</head>
<style>
	a {
		color: black;
	}
	.container {
		height: 1000px;
	    height: 1500px;
	    width: 1000px;
	    margin: 100px auto;
	}
	.searchTitle {
	    text-align: center;
	    font-size: 25px;
	    background-color: #f4f6f9;
	    margin-bottom: 50px;
	    padding: 20px 70px 25px;
	    border-radius: 10px;	
	}
	.searchDate_input {
		text-align: center;
	 	margin: 20px 0;
	    width: 200px;
	    height: 35px;
	}
	.category ul {
		display: table;
		border-bottom: 1px solid black;
	    width: 100%;
        height: 30px;
	}
	.category ul li {
	    display: table-cell;
	    width: 15%;
	    text-align: center;
	}
	.select_seq {
		display: inline-block;
	}
	.select_seq span {
	    display: inline-block;
   	 	margin: 20px 10px;
	}
	.searchView {
	    width: 100%;
    	height: 170px;
    	padding: 10px 10px;
    	display: table;
	}
	.itemPhoth {
		display:table-cell;
		width: 125px;
		height: 200px;
	}
	.itemPhoth a img{
		position: absolute;
		width: 125px;
		
	}
	.itemData {
		display: table-cell;
	    padding-left: 40px;
	    height: 160px;
	}
	.itemInfo {
	    display: table-cell;
        width: 25%;
        vertical-align: bottom;
        padding-bottom: 20px;
	}
	.itemList li {
	    display: table;
    	width: 100%;
	}
	.itemTitle {
		height: 40px;
	}
	.itemText {
	    height: 120px;
	    display: table-cell;
	    vertical-align: bottom;
	}
	.pageing {
		text-align: center;
	}
	.page {
	    display: inline-block;
	    width: 41px;
	    height: 41px;
	    border: 1px solid #b6bdc7;
	    background: #fff;
	    font-size: 16px;
	    line-height: 41px;
	    vertical-align: bottom;
        overflow: hidden;
	}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="searchTitle">'${keyword }'에 대한 검색결과 입니다.</div>
		<!-- <div class="searchDate"><input type="date" class="searchDate_input"></div> -->
		<div class="category">
			<ul>
				<li><a href="search?keyword=${keyword }">전체(${cnt })</a></li>
				<li><a href="search?genre=1&keyword=${keyword }">뮤지컬(${muCount })</a></li>
				<li><a href="search?genre=2&keyword=${keyword }">콘서트(${cocount })</a></li>
				<li><a href="search?genre=3&keyword=${keyword }">연극(${plcount })</a></li>
				<li><a href="search?genre=4&keyword=${keyword }">클래식/무용(${clexcount })</a></li>
				<li><a href="search?genre=5&keyword=${keyword }">전시/행사(${excount })</a></li>
			</ul>
			<div class="select_seq">
				<span><a href="search?keyword=${keyword }">정확도순</a></span> | 
				<span><a href="search?seq=imminent&keyword=${keyword }">공연임박순</a></span> | 
				<span><a href="search?seq=sale&keyword=${keyword }">판매많은순</a></span> <%-- | 
				<span><a href="search?keyword=${keyword }&seq=average">평점높은순</a></span> --%>
			</div>
			<hr>
		</div>
		<div class="searchView">
			<ul class="itemList">
				<c:choose>
					<c:when test="${seq.param eq imminent }">
						<c:forEach var="list" items="${seq_list }">
							<li>
								<div class="itemPhoth"><a href="getDetail?gd_num=${list.gd_num }"><img src="resources/posterImages/${list.poster }"></a>
								</div>
								<div class="itemData">
									<div class="itemTitle"><h3><a href="getDetail?gd_num=${list.gd_num }">${list.gd_title }</a></h3></div>
									<br>
									<div class="itemText">
										<div class="itemContents">${genre_name } | ${list.gd_runningtime }분 | ${list.gd_age }</div>
										<div class="itemActor">출연:${list.gd_actor }</div>
									</div>
								</div>
								<div class="itemInfo">
									<div class="itemLocation">${list.gd_location }</div>
									<div class="itemDate">${list.gd_startTime } ~ ${list.gd_endTime }</div>
								</div>
							</li>
							<hr>
						</c:forEach>
					</c:when>
					<c:when test="${seq.param eq sale }">
						<c:forEach var="list" items="${seq_list }">
							<li>
								<div class="itemPhoth"><a href="getDetail?gd_num=${list.gd_num }"><img src="resources/posterImages/${list.poster }"></a>
								</div>
								<div class="itemData">
									<div class="itemTitle"><h3><a href="getDetail?gd_num=${list.gd_num }">${list.gd_title }</a></h3></div>
									<br>
									<div class="itemText">
										<div class="itemContents">${genre_name } | ${list.gd_runningtime }분 | ${list.gd_age }</div>
										<div class="itemActor">출연:${list.gd_actor }</div>
									</div>
								</div>
								<div class="itemInfo">
									<div class="itemLocation">${list.gd_location }</div>
									<div class="itemDate">${list.gd_startTime } ~ ${list.gd_endTime }</div>
								</div>
							</li>
							<hr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach var="list" items="${all_list }">
							<li>
								<div class="itemPhoth"><a href="getDetail?gd_num=${list.gd_num }"><img src="resources/posterImages/${list.poster }"></a>
								</div>
								<div class="itemData">
									<div class="itemTitle"><h3><a href="getDetail?gd_num=${list.gd_num }">${list.gd_title }</a></h3></div>
									<br>
									<div class="itemText">
										<div class="itemContents">${genre_name } | ${list.gd_runningtime }분 | ${list.gd_age }</div>
										<div class="itemActor">출연:${list.gd_actor }</div>
									</div>
								</div>
								<div class="itemInfo">
									<div class="itemLocation">${list.gd_location }</div>
									<div class="itemDate">${list.gd_startTime } ~ ${list.gd_endTime }</div>
								</div>
							</li>
							<hr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<!-- 페이징처리 -->
		<div class="pageing">
			<c:if test="${pu.startPageNum>5 }">
				<a href="search?pageNum=${pu.startPageNum-1 }&keyword=${keyword}&genre=${genre}" class="page"><img src="resources/images/20220614_014726.png"></a>
			</c:if>
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<c:choose>
					<c:when test="${pu.pageNum==i }"><!-- 현재페이지 -->
						<a href="search?pageNum=${i }&keyword=${keyword}&genre=${genre}" class="current_page page">${i }</a>
					</c:when>
					<c:otherwise>
						<a href="search?pageNum=${i }&keyword=${keanother}&genre=${genre}" class="another_page page">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${pu.endPageNum<pu.totalPageCount }">
				<a href="search?pageNum=${pu.endPageNum+1 }&keyword=${keyword}&genre=${genre}" class="page"><img src="resources/images/20220614_011845.png"></a>
			</c:if>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>