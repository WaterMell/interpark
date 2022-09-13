<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콘서트 - 인터파크</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<link rel="stylesheet" type="text/css" href="resources/css/sub_style.css">
<script src="js/jquery-3.6.0.js"></script>
<script src="js/motion.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include><!-- 최상단 상단 (로그인,회원가입,예매확인/취소, 마이페이지) -->

<%-- 	<h1>전시/행사 사이트에 오신것을 환영합니다</h1>
	<ul>
		<c:forEach var="exhibiList" items="${exhibi }">
			<li>
				<a href="getDetail?gd_num=${exhibiList.gd_num }">${exhibiList.gd_title }</a>
			</li>
		</c:forEach>
	</ul> --%>
	<div id="container">
        <section class="musical_con1">
            <div class="content1_wrap">
		    	<c:forEach var="detail" items="${concertList }" begin="0" end="5">
	                <dl>
	                    <dt>
	                        <a href="getDetail?gd_num=${detail.gd_num }">
	                            <img src="resources/posterImages/${detail.poster }" width="128px" height="126px" alt="${detail.gd_title }">
	                        </a>
	                    </dt>
	                    <dd>
	                        <span class="con1_txt1">${detail.gd_title }</span>
	                        <span class="con1_txt2">${detail.gd_location }</span>
	                        <span class="con1_txt3">${detail.gd_term }</span>
	                    </dd>
	                </dl>
		    	</c:forEach>
            </div>
        </section>

        <section class="musical_con2">
            <div class="content2_wrap">
                <!-- <div class="category">
                    <dl>
                        <dt>
                            <span>뮤지컬</span>
                        </dt>
                        <dd><a href="#">오리지널/내한공연</a></dd>
                        <dd><a href="#">라이센스</a></dd>
                        <dd><a href="#">창작뮤지컬</a></dd>
                        <dd><a href="#">넌버벌 퍼포먼스</a></dd>
                        <dd><a href="#">패키지공연</a></dd>
                        <dd><a href="#">MD샵</a></dd>
                        <dd><a href="#">지역별 예매</a></dd>
                        <dd><a href="#">날짜별 예매</a></dd>
                    </dl>
                    <p>
                        <a href="#"><img src="sub_images/con2_allbtn.gif" alt="전체보기"></a>
                    </p>
                </div> -->
                <div class="con2_center">
                    <div class="sc_big">
                        <div class="bn_big">
                            <a href="#"><img src="resources/sub_images/con2_banner1.gif" alt="베어 더 뮤지컬 본창이동"></a>
                        </div>

                        <ul>
                            <li><a href="#">베어 더 뮤지컬</a></li>
                            <li><a href="#">니진스키</a></li>
                            <li><a href="#">포미니츠</a></li>
                            <li><a href="#">웃는 남자</a></li>
                            <li><a href="#">사의찬미</a></li>
                            <li><a href="#">킹아더</a></li>
                        </ul>
                    </div>
                    <dl class="hot_mus">
                        <dt><img src="resources/sub_images/title_music.gif" alt="HOT뮤지컬"></dt>
                    	<c:forEach var="detail" items="${concertList }" begin="0" end="6">
	                        <dd><a href="getDetail?gd_num=${detail.gd_num }">${detail.gd_title }</a></dd>
                    	</c:forEach>
                    </dl>

                    <dl class="ticket">
                        <dt>
                            <img src="resources/sub_images/title_open.gif" alt="티켓오픈 소식">
                            <!-- <span class="btn_more">
                                <a href="#"><img src="sub_images/btn_more.gif" alt="더보기"></a>
                            </span> -->
                        </dt>
                        <dd><a href="#">&#8226;뮤지컬 &lt;은밀하게 위대하게:THE LAST&gt; 마지막 티켓오픈 안내</a></dd>
                        <dd><a href="#">&#8226;2022 뮤지컬 &lt;미드나잇 : 액터뮤지션&gt; 6차 티켓오픈 안내</a></dd>
                    </dl>
                </div>

                <div class="con2_ranking">
                    <div class="ifr_ranking">
                        <dl>
                            <dt>랭킹</dt>
                            <dd>
                                <ul>
                                    <li><button>전체</button></li>
                                    <li><button>라이선스/내한</button></li>
                                    <li><button>창작</button></li>
                                </ul>
                            </dd>
                            <dd>
                                <a href="#"><img src="resources/sub_images/moreRank.gif" alt="더보기"></a>
                            </dd>
                        </dl>
                        <ol class="rank_all">
                            <li><a href="#">1. 뮤지컬 &lt;킹키부츠&gt;</a></li>
                            <li><a href="#">2. 뮤지컬 &lt;마타하리&gt;</a></li>
                            <li><a href="#">3. 뮤지컬 &lt;은밀하게 위대하게&gt;</a></li>
                            <li><a href="#">4. 뮤지컬 데스노트</a></li>
                            <li><a href="#">5. 뮤지컬 &lt;아이다&gt;</a></li>
                        </ol>
                        <ol class="rank_lic">
                            <li><a href="#">1. 뮤지컬 &lt;킹키부츠&gt;</a></li>
                            <li><a href="#">2. 뮤지컬 데스노트</a></li>
                            <li><a href="#">3. 뮤지컬 &lt;아이다&gt;</a></li>
                            <li><a href="#">4. 블루맨그룹 월드투어</a></li>
                            <li><a href="#">5. 뮤지컬 데스노트</a></li>
                        </ol>
                        <ol class="rank_creat">
                            <li><a href="#">1. 뮤지컬 &lt;마타하리&gt;</a></li>
                            <li><a href="#">2. 뮤지컬 &lt;은밀하게 위대하게&gt;</a></li>
                            <li><a href="#">3. 뮤지컬 &lt;전설의 리틀 농구단&gt;</a></li>
                            <li><a href="#">4. 뮤지컬 &lt;사의찬미&gt;</a></li>
                            <li><a href="#">5. 뮤지컬 &lt;모래시계&gt;</a></li>
                        </ol>
                    </div>

                    <div class="aside_banner">
                        <p>
                            <a href="#">
                                <img src="resources/sub_images/musical_banner.gif" alt="MUSICAL 차미 2022.04.22~2022.07.16 플러스씨어터">
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <section class="musical_banner">
            <div class="banner_wrap">
                <ul>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/banner_img1.gif" alt="뮤지컬 〈실비아, 살다〉 상품 페이지 본창이동">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/banner_img2.gif" alt="뮤지컬 〈은밀하게 위대하게:THE LAST〉 상품 페이지 본창이동">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/banner_img3.gif" alt="뮤지컬 〈사의찬미〉 상품 페이지 본창이동">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/banner_img4.gif" alt="뮤지컬 〈클림트〉 상품 페이지 본창이동">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/banner_img5.gif" alt="뮤지컬 〈니진스키〉 상품 페이지 본창이동">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/banner_img6.gif" alt="뮤지컬 〈전설의 리틀 농구단〉 상품 페이지 본창이동">
                        </a>
                    </li>
                </ul>
            </div>
        </section>

        <section class="musical_issue">
            <div class="issue_wrap">
                <div class="issue_title">
                    <p>
                        <img src="resources/sub_images/issue_title.gif" alt="관심집중 핫 이슈 뮤지컬">
                    </p>
                </div>
                
                <ul class="issue_list">
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img1.gif" alt="난세 상품 페이지 본창이동">
                            <span class="issue_txt1">난세</span>
                            <span class="issue_txt2">서경대학교 공연예술센터</span>
                            <span class="issue_txt3">프리뷰 할인 40%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img2.gif" alt="실비아, 살다 상품 페이지 본창이동">
                            <span class="issue_txt1">실비아, 살다</span>
                            <span class="issue_txt2">대학로 TOM(티오엠)</span>
                            <span class="issue_txt3">프리뷰 할인 50%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img3.gif" alt="볼륨업 상품 페이지 본창이동">
                            <span class="issue_txt1">볼륨업</span>
                            <span class="issue_txt2">갤러리아포레 서울숲</span>
                            <span class="issue_txt3">조기예매 할인 30%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img4.gif" alt="전설의 리틀 농구단 상품 페이지 본창이동">
                            <span class="issue_txt1">전설의 리틀 농구단</span>
                            <span class="issue_txt2">동덕여대 공연예술센터</span>
                            <span class="issue_txt3">워밍업 할인 30%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img5.gif" alt="유진과 유진 상품 페이지 본창이동">
                            <span class="issue_txt1">유진과 유진</span>
                            <span class="issue_txt2">대학로 자유극장</span>
                            <span class="issue_txt3">유진도서 할인 15%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img6.gif" alt="난타(NANTA) 상품 페이지 본창이동">
                            <span class="issue_txt1">난타(NANTA)</span>
                            <span class="issue_txt2">명동난타극장</span>
                            <span class="issue_txt3">조기예매 할인 40%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img7.gif" alt="빨래 상품 페이지 본창이동">
                            <span class="issue_txt1">빨래</span>
                            <span class="issue_txt2">대학로 유니플렉스 2관</span>
                            <span class="issue_txt3">프리뷰 할인 35%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img8.gif" alt="태양의 노래 상품 페이지 본창이동">
                            <span class="issue_txt1">태양의 노래</span>
                            <span class="issue_txt2">한전아트센터</span>
                            <span class="issue_txt3">서초구민 할인 20%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img8.gif" alt="난세 상품 페이지 본창이동">
                            <span class="issue_txt1">난세</span>
                            <span class="issue_txt2">서경대학교 공연예술센터</span>
                            <span class="issue_txt3">프리뷰 할인 40%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img7.gif" alt="난세 상품 페이지 본창이동">
                            <span class="issue_txt1">실비아, 살다</span>
                            <span class="issue_txt2">대학로 TOM(티오엠)</span>
                            <span class="issue_txt3">프리뷰 할인 50%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img6.gif" alt="태양의 노래 상품 페이지 본창이동">
                            <span class="issue_txt1">볼륨업</span>
                            <span class="issue_txt2">갤러리아포레 서울숲</span>
                            <span class="issue_txt3">조기예매 할인 30%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img5.gif" alt="빨래 상품 페이지 본창이동">
                            <span class="issue_txt1">전설의 리틀 농구단</span>
                            <span class="issue_txt2">동덕여대 공연예술센터</span>
                            <span class="issue_txt3">워밍업 할인 30%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img4.gif" alt="난타(NANTA) 상품 페이지 본창이동">
                            <span class="issue_txt1">유진과 유진</span>
                            <span class="issue_txt2">대학로 자유극장</span>
                            <span class="issue_txt3">유진도서 할인 15%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img3.gif" alt="전설의 리틀 농구단 상품 페이지 본창이동">
                            <span class="issue_txt1">난타(NANTA)</span>
                            <span class="issue_txt2">명동난타극장</span>
                            <span class="issue_txt3">조기예매 할인 40%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img2.gif" alt="실비아, 살다 상품 페이지 본창이동">
                            <span class="issue_txt1">빨래</span>
                            <span class="issue_txt2">대학로 유니플렉스 2관</span>
                            <span class="issue_txt3">프리뷰 할인 35%</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources/sub_images/issue_img1.gif" alt="난세 상품 페이지 본창이동">
                            <span class="issue_txt1">태양의 노래</span>
                            <span class="issue_txt2">한전아트센터</span>
                            <span class="issue_txt3">서초구민 할인 20%</span>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
	 <jsp:include page="footer.jsp"></jsp:include><!-- 하단 회사정보 등 -->
</body>
</html>