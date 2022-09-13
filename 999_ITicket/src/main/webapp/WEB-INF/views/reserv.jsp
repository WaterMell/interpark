<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>reserv 예약 페이지</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	.info ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		min-height: 0;
		width: 750px;
		background-color: white;
		border-bottom: solid 1px #b6bdc7;
	}
	.info ul li {
		float: left;
	}
	.info ul li a {
		display: block;
		color: black;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none;
		font-family: -apple-system, system-ui, BlinkMacSystemFont, 
					"맑은 고딕", "Malgun Gothic", "돋움", Dotum, Helvetica, 
					"Apple SD Gothic Neo", sans-serif;
	}
	.detailInfo {
		display: none;
		width: 500px;
		height: 180px;
		overflow: hidden;
	}
	.reviewInfo {
		display: none;
		overflow: hidden;
	}
	.audiBtn .detailBtn {
		border-style: hidden;
	}
	.whole {
		margin-left: 26%;
	}
	.prdLikeIcon {
		float: left;
	}
	.information{
		/* 포스터나 위에 정보들 만든 다음에 top으로 내리기 */
	}
	.infoId {
		overflow: hidden;
	}
	.sticky {
		 position: fixed;
		 top: 0;
		 width: 100%;
	}
	.sticky + .information {
 		padding-top: 60px;
	}
	
	.basicInfo {
		display: inline-block;
	}
	.poster {
		float: left;
	}
	
	.detailInformation {
		float: right;
		margin-left: 50px;
	}
	.detailInformation ul {
		list-style-type: none;
		margin-bottom: 40px;
	}
	/* .detailInformation li {
		float: left;
	} */
	.reviewInfo {
		/* display: inline-block; */
		width: 800px;
	}
	.writeBtn {
		border: solid;
		color: white;
		background-color: #333333;
		width: 120.92px;
		height: 34px;
		border-radius: 8px;
  		padding: 5px;
  		float: right;
	}
	.writeBtn a {
		text-align: center;
		color: white;
		display: block;
		text-decoration: none;
		margin-top: 5px;
	}
	.comCnt {
		float: left;
	}
	/*.ReviewList {
		border: 1px solid black;
		border-radius: 8px;
		
	}
	*/
	.displayReview {
		border: 1px solid #dfe5ed;
		border-radius: 1rem;
		padding: 25px;
		font-size: 14px;
	}
	.likeCount{
		float: left;
		
	}
	.userInfo{
		float: right;
	}
	.infoPrice{
		display: inline-block;
		max-width: 39rem;
		vertical-align: top;
	}
	.likeCount img{
		width: 27px;
		height: 23px;
	}
	.updateBtn{
		border: 1px solid #ccc;
		text-align: center;
		background-color: white;
		border-radius: 0.4rem;
		padding: 2px;
		color: #666;
	}
	.deleteBtn{
		border: 1px solid #ccc;
		text-align: center;
		background-color: white;
		border-radius: 0.4rem;
		padding: 2px;
		color: #666;
	}
	.reservBtn{
		border: 1px solid #ef3f43;
		background-color: #ef3f43;
		color: white;
		border-radius: 8px;
  		padding: 5px;
  		margin: 0px;
  		font-size: 17px;
	}
	#scrollTopPc {
	 	position: fixed;
	  	bottom: 201px; /* 윗쪽 끝에서부터의 거리 */
	  	right: 450px; /* 오른쪽 끝에서부터의 거리 */
	  	cursor: pointer;
	  	z-index: 99;
	  	border: 1px solid #e1e4e9;
	  	border-radius: 10px;
	  	width: 53px;
	  	height: 52px;
	}
	#scrollTopPc img {
		width: 24px;
		margin-left: 14px;
		margin-top: 5px;
	}
</style>
</head>
<script>
	$(document).ready(function(){
		$(".detailBtn").click(function(){
			console.log("detailBtn 눌림");
			$(".detailBtn").css({"border-bottom": "3px solid black"});
			$(".audiBtn").css({"border-bottom": "1px solid white"});
			$(".reviewBtn").css({"border-bottom": "1px solid white"});
			$(".audiInfo").hide();
			$(".reviewInfo").hide();
			$(".detailInfo").show();
		});
		
		$(".audiBtn").click(function(){
			console.log("autoBtn 눌림");
			$(".detailBtn").css({"border-bottom": "1px solid white"});
			$(".reviewBtn").css({"border-bottom": "1px solid white"});
			$(".audiBtn").css({"border-bottom": "3px solid black"});
			$(".detailInfo").hide();
			$(".reviewInfo").hide();
			$(".audiInfo").show();
		});
		
		$(".reviewBtn").click(function(){
			console.log("reviewBtn 눌림");
			$(".audiBtn").css({"border-bottom": "1px solid white"});
			$(".detailBtn").css({"border-bottom": "1px solid white"});
			$(".reviewBtn").css({"border-bottom": "3px solid black"});
			$(".audiInfo").hide();
			$(".detailInfo").hide();
			$(".reviewInfo").show();
		});
		
		
	});
</script>
<body>
	<jsp:include page="header.jsp"></jsp:include><!-- 최상단 상단 (로그인,회원가입,예매확인/취소, 마이페이지) -->
	
	<br>	
	<div class="whole">
		<c:if test="${detail.gr_num eq 1 }">
			<h2>뮤지컬 ${detail.gd_title }</h2>
		</c:if>
		<c:if test="${detail.gr_num eq 2 }">
			<h2>${detail.gd_title }</h2>
		</c:if>
		<c:if test="${detail.gr_num eq 3 }">
			<h2>연극 ${detail.gd_title }</h2>
		</c:if>
		<c:if test="${detail.gr_num eq 4 }">
			<h2> ${detail.gd_title }</h2>
		</c:if>
		<c:if test="${detail.gr_num eq 5 }">
			<h2> ${detail.gd_title }</h2>
		</c:if>
		
		<div class="likePart">
			<div class="prdLikeIcon">
				<!-- 별이든 하트든 별점 평균점수에 맞춰서 채워짐 -->
				<a>별점 아이콘</a>
			</div>
			<div class="prdLikeScore">
				<!-- 리뷰게시판에 매긴 별점 평균내서 나오게 하지 -->
				<a>별점 점수<strong>${detail.gd_average }</strong></a>
			</div>
		</div>
		
		<div class="basicInfo">
			<div class="poster">
				<img src="resources/posterImages/${detail.poster }" alt="${detail.gd_title }">
			</div>
			<div class="detailInformation">
				<ul>
					<li>
						<strong>장소&nbsp;</strong>
						<a> ${detail.gd_location }</a>
					</li>
				</ul>
				<ul>
					<li>
						<strong>공연기간&nbsp;</strong>
						<a> ${detail.gd_term }</a>
					</li>
				</ul>
				<ul>
					<li>
						<strong>공연시간&nbsp;</strong>
						<a> ${detail.gd_runningtime }분</a>
					</li>
				</ul>
				<ul>
					<li>
						<strong>관람연령&nbsp;</strong>
						<a> ${detail.gd_age }</a>
					</li>
				</ul>
				<ul>
					<li class="priceInfo">
						<strong>가격&nbsp;</strong>
						<div class="infoPrice">
							<c:if test="${detail.gr_num eq 1 }">
								<ul>
									<li>
										<a>S석 <strong>90,000원</strong></a>
										<p>A석 <strong>50,000원</strong></p>
									</li>
								</ul>
							</c:if>
							<c:if test="${detail.gr_num eq 2 }">
								<ul>
									<li>
										<a>S석 <strong>90,000원</strong></a>
										<p>A석 <strong>70,000원</strong></p>
										<p>B석 <strong>50,000원</strong></p>
									</li>
								</ul>
							</c:if>
							<c:if test="${detail.gr_num eq 3 }">
								<ul>
									<li>
										<a>S석 <strong>90,000원</strong></a>
										<p>A석 <strong>70,000원</strong></p>
										<p>B석 <strong>50,000원</strong></p>
									</li>
								</ul>
							</c:if>
							<c:if test="${detail.gr_num eq 4 }">
								<ul>
									<li>
										<a>S석 <strong>90,000원</strong></a>
										<p>A석 <strong>70,000원</strong></p>
										<p>B석 <strong>50,000원</strong></p>
									</li>
								</ul>
							</c:if>
							<c:if test="${detail.gr_num eq 5 }">
								<ul>
									<li>
										<strong>25,000원</strong>
									</li>
								</ul>
							</c:if>
						</div>
					</li>
				</ul>
				<ul>
					<li>
						<a class="reservBtn" href="get_schedule_list?gd_num=${detail.gd_num }">상영시간 선택하기</a><br>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="info" id="infoId">
			<ul>
				<li>
					<c:choose>
						<c:when test="${detail.gr_num eq 5 }">
							<a class="audiBtn" href="#">이용정보</a>
						</c:when>
						<c:otherwise>
							<a class="audiBtn" href="#">공연정보</a>
						</c:otherwise>
					</c:choose>
				</li> 
				<li>
					<a class="detailBtn" href="#">부가정보</a>
				</li>
				<li>
					<a class="reviewBtn" href="#">
						관람후기
						<span>(${reviewCount })</span>
					</a>
				</li>
			</ul>
		</div>
		
		<br><br><br>
		
		<div class="information">
			<div class="audiInfo">
				<c:choose>
					<c:when test="${detail.gr_num eq 5}">
						<h3>공연시간 정보</h3>
						<p>예매가능시간: 관람 5분 전까지</p>
						<br>
						
						<h3>공지사항</h3>
						<ul>
							<li>
								<strong>* 중도입장불가</strong>
								<div>예매한 시간 15전 전까지 도착해주시기 바랍니다.</div>
							</li>
							<li>
								<strong>* 관람연령안내</strong>
								<div>입장 가능 연령은 8세 이상 70세이하입니다.</div>
								<div>만 14세 미만 청소년은 법정 대리인 동의서가 필수입니다</div>
							</li>
						</ul>
						<br>
						
						<img alt="안내문 및 프로필" src="resources/posterImages/${detail.img2 }">
					</c:when>
					<c:otherwise>
						<h3 class="cast">캐스팅</h3>
						<p>${detail.gd_actor }</p>
						<img alt="안내 사진" src="resources/posterImages/${detail.img1 }">
						<br>
						<img alt="프로필 안내" src="resources/posterImages/${detail.img2 }">	
					</c:otherwise>
				</c:choose>
			</div>
			<div class="detailInfo">
				숨겨왔던 부가정보 입니다... 보고 싶지 않으셨다면 다른 버튼을 눌러주세요
			</div>
			<div class="reviewInfo">
				<strong>꼭 읽어주세요</strong>
				<p>게시판 운영 규정에 어긋난다고 판단되는 게시글은 사전 통보없이 블라인드 처리될 수 있습니다.</p>
				<p>특히 티켓 매매 및 양도의 댓글은 발견 즉시 임의 삭제 되며 전화번호, 이메일 등의 개인정보는 악용될 우려가 있으므로 게시를 삼가 주시기 바랍니다.</p>
				<br>
				<h2>이용 평점 ${detail.gd_average }</h2>
				<span class="averageStar">
					<%-- ${detail.gd_average } --%>
				</span>
				<br>
				<div class="reviewDetail">
					<div class="comCnt">
						<strong>
							총 <span>${reviewCount }</span>개의 이용후기가 등록되었습니다.						
						</strong>
						<!-- <p>총 67개의 이용후기가 등록되었습니다. </p> -->
					</div>
					<!-- 검색창이랑 글쓰기 버튼 있음 -->
					<div class="writeBtn">
						<a id="writeReview" onclick="checkRL()">
							이용후기 작성
						</a>					
					</div>
					<br><br><br>
					<hr>
				</div>
				
				<p>안녕하세요 저는 윤솔비라고 함</p>
				<c:forEach var="review" items="${reviewList }">
					<div class="displayReview">
						<div class="likeCount">
							<c:if test="${review.rv_likecnt eq 2 }">
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
							</c:if>
							<c:if test="${review.rv_likecnt eq 4 }">
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
							</c:if>
							<c:if test="${review.rv_likecnt eq 6 }">
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
							</c:if>
							<c:if test="${review.rv_likecnt eq 8 }">
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star.png"></a>
							</c:if>
							<c:if test="${review.rv_likecnt eq 10 }">
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
								<a><img alt="별점" src="resources/images/icon_star_on.png"></a>
							</c:if>
						</div>
						<div class="userInfo">
							<c:if test="${user eq review.user_id }">
								<a class="updateBtn" href="reviewUpdatePage?rv_num=${review.rv_num }">수정</a>
								<a class="deleteBtn" href="reviewDelete?rv_num=${review.rv_num }&gd_num=${review.gd_num}" >삭제</a>
							</c:if>
							<a>${review.user_id } | </a>
							<a class="reviewDate">${review.rv_regdate }</a>
						</div>
						<br><br>
						<strong>${review.rv_title }</strong>
						<p>${review.rv_content }</p>
					</div>
					<br>
				</c:forEach>
			</div>
		</div>
		<div>
			<div onclick="topFunction()" id="scrollTopPc" class="hidden-md hidden-sm hidden-xs">
    			<img src="resources/images/topButton.png">
			</div>
		</div>
	</div>
	<a href="get_schedule_list?gd_num=${detail.gd_num }">상영시간 선택하기</a><br>
	
	<jsp:include page="footer.jsp"></jsp:include><!-- 하단 회사정보 등 -->
</body>

<script>
	window.onscroll = function() {stickyF()};
	let navbar = document.getElementById("infoId");
	let sticky = navbar.offsetTop;
	
	function stickyF() {
		if (window.pageYOffset >= sticky) {
			navbar.classList.add("sticky");
		} else {
			navbar.classList.remove("sticky");
		}
	}
	
	function checkRL() {
		alert("checkRL() 실행");
		var id = '<%=(String)session.getAttribute("user")%>';
		if (id == "null") {
			if (confirm("로그인이 필요한 서비스 입니다. 로그인 하시겠습니까?")) {
				window.location.href = "login";
			}
			// 예매내역 확인도 해야함
		//} else if (){
		//	alert("예매내역이 없으면 후기를 쓸 수 없습니다.");
		} else {
			var getGdNum = ${detail.gd_num};
			window.location.href = "writeR?gd_num=" + ${detail.gd_num};
		}
	}
	
	function askDelR() {
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 		alert("askDelR() 실행");
 		if(confirm("정말로 리뷰 글을 삭제하시겠습니까?")){
 			/* <c:forEach items="${reviewList}" var="review">
 			</c:forEach> */
			//window.location.href = "reviewDelete?rv_num=" /* ${review.rv_num } +  "&gd_num="  + ${review.gd_num} */;
		}
	}
	
	window.onscroll = function() {scrollFunction()};
    function scrollFunction() {
        if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
            document.getElementById("scrollTopPc").style.display = "block";
        } else {
            document.getElementById("scrollTopPc").style.display = "none";
        }
    }
    
    function topFunction() {
        $('html,body').animate( {scrollTop:0 }, 500);
    }
	
	
</script>
</html>