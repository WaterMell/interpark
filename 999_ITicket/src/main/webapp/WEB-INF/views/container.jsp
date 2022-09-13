<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- container.jsp -->
<style>
	.container {
		height: 700px;
	}
</style>
<div class="container">
	<section class="ranking">
                <div class="ranking_wrap">
                    <div class="ranking_title">
                        <h2><a href="#">RANKING</a></h2>
                        <ul>
                            <li class="ranking_btn ranking1"><button>뮤지컬</button></li>
                            <li class="ranking_btn ranking2"><button>콘서트</button></li>
                            <li class="ranking_btn ranking3"><button>연극</button></li>
                            <li class="ranking_btn ranking4"><button>클래식/무용</button></li>
                            <li class="ranking_btn ranking5"><button>스포츠</button></li>
                            <li class="ranking_btn ranking6"><button>레저</button></li>
                            <li class="ranking_btn ranking7"><button>전시/행사</button></li>
                            <li class="ranking_btn ranking8"><button>아동/가족</button></li>
                        </ul>
                        <a href="#"><img src="resources/images/rankingMore.gif" alt="랭킹 더보기"></a>
                    </div>
                    <div class="ranking_body">
                        <div class="rankingbody_wrap1">
                            <div class="rankingcontent1">
                                <div class="contentTitle contentText1">
                                    >라이선스/내한 뮤지컬
                                    <a href="#" class="contentmore">더보기</a>
                                </div>
                                <ul>
                                    <li>
                                        <span class="rankingNum num2"></span>
                                        <a href="#" class="prdName">
                                            <div class="prdImg">
                                                <img class="img1" src="resources/images/22001534_p_s.jpg" alt="아이다">
                                            </div>
                                            <div class="prdTxt">뮤지컬 〈아이다〉</div>
                                        </a>
                                    </li>
                                    <li>
                                        <span class="rankingNum num3"></span>
                                        <a href="#" class="prdName">
                                            <div class="prdImg">
                                                <img class="img2" src="resources/images/22000970_p_s.jpg" alt="데스노트">
                                            </div>
                                            <div class="prdTxt">뮤지컬 데스노트</div>
                                        </a>
                                    </li>
                                    <li>
                                        <span class="rankingNum num4"></span>
                                        <a href="#" class="prdName">
                                            <div class="prdImg">
                                                <img src="resources/images/22004658_p_s.jpg" alt="하데스타운">
                                            </div>
                                            <div class="prdTxt">뮤지컬〈하데스타운〉</div>
                                        </a>
                                    </li>
                                    <li>
                                        <span class="rankingNum num2"></span>
                                        <a href="#" class="prdName">
                                            <div class="prdImg">
                                                <img src="resources/images/22001534_p_s.jpg" alt="아이다">
                                            </div>
                                            <div class="prdTxt">뮤지컬 〈아이다〉</div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="rankingcontent2">
                                <div class="contentTitle contentText2">
                                    >창작 뮤지컬
                                    <a href="#" class="contentmore">더보기</a>
                                </div>
                                <ul>
                                    <li>
                                        <span class="rankingNum num2"></span>
                                        <a href="#" class="prdName">
                                            <div class="prdImg">
                                                <img class="img3" src="resources/images/22001534_p_s.jpg" alt="아이다">
                                            </div>
                                            <div class="prdTxt">뮤지컬 〈아이다〉</div>
                                        </a>
                                    </li>
                                    <li>
                                        <span class="rankingNum num3"></span>
                                        <a href="#" class="prdName">
                                            <div class="prdImg">
                                                <img class="img4" src="resources/images/22000970_p_s.jpg" alt="데스노트">
                                            </div>
                                            <div class="prdTxt">뮤지컬 데스노트</div>
                                        </a>
                                    </li>
                                    <li>
                                        <span class="rankingNum num4"></span>
                                        <a href="#" class="prdName">
                                            <div class="prdImg">
                                                <img src="resources/images/22004658_p_s.jpg" alt="하데스타운">
                                            </div>
                                            <div class="prdTxt">뮤지컬〈하데스타운〉</div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="performance">
                <div class="performance_wrap">
                    <ul class="subTap">
                        <li class="tap1"><a href="#">인기뮤지컬</a></li>
                        <li class="tap2"><a href="#">인기콘서트</a></li>
                        <li class="tap3"><a href="#">인기연극</a></li>
                        <li class="tap4"><a href="#">인기클래식</a></li>
                        <li class="tap5"><a href="#">인기전시/행사</a></li>
                    </ul>
                    <ul class="contents1 contents_control">
                    	<c:forEach var="detail" items="${musicalList }" begin="0" end="4">
		                        <li>
		                            <a href="getDetail?gd_num=${detail.gd_num }">
		                                <img src="resources/posterImages/${detail.poster }" alt="뮤지컬">
		                                <span class="prdTxt">뮤지컬  <${detail.gd_title }></span>
		                                <span class="prdDate">${detail.gd_term }</span>
		                            </a>
		                        </li>
                    	</c:forEach>
                    </ul>
                    <ul class="contents2 contents_control">
                    	<c:forEach var="detail" items="${concertList }" begin="0" end="4">
		                        <li>
		                            <a href="getDetail?gd_num=${detail.gd_num }">
		                                <img src="resources/posterImages/${detail.poster }" alt="콘서트">
		                                <span class="prdTxt"> ${detail.gd_title }</span>
		                                <span class="prdDate">${detail.gd_term }</span>
		                            </a>
		                        </li>
                    	</c:forEach>
                    </ul>
                    <ul class="contents3 contents_control">
                    	<c:forEach var="detail" items="${playingList }" begin="0" end="4">
		                        <li>
		                            <a href="getDetail?gd_num=${detail.gd_num }">
		                                <img src="resources/posterImages/${detail.poster }" alt="연극">
		                                <span class="prdTxt">연극  <${detail.gd_title }></span>
		                                <span class="prdDate">${detail.gd_term }</span>
		                            </a>
		                        </li>
                    	</c:forEach>
                    </ul>
                    <ul class="contents4 contents_control">
                    	<c:forEach var="detail" items="${classicList }" begin="0" end="4">
		                        <li>
		                            <a href="getDetail?gd_num=${detail.gd_num }">
		                                <img src="resources/posterImages/${detail.poster }" alt="클래식">
		                                <span class="prdTxt">클래식  <${detail.gd_title }></span>
		                                <span class="prdDate">${detail.gd_term }</span>
		                            </a>
		                        </li>
                    	</c:forEach>
                    </ul>
                    <ul class="contents5 contents_control">
                    	<c:forEach var="detail" items="${exhibiList }" begin="0" end="3">
		                        <li>
		                            <a href="getDetail?gd_num=${detail.gd_num }">
		                                <img src="resources/posterImages/${detail.poster }" alt="전시/행사">
		                                <span class="prdTxt">전시/행사  <${detail.gd_title }></span>
		                                <span class="prdDate">${detail.gd_term }</span>
		                            </a>
		                        </li>
                    	</c:forEach>
                    	<li>
                            <a href="getDetail?gd_num=34">
                                <img src="resources/posterImages/inThisLifePoster.jpg" alt="전시/행사">
                                <span class="prdTxt"><야생에서 현생으로></span>
                                <span class="prdDate">2022-10-15 ~ 2022-10-15</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
	<a href="reserv">예매사이트 및 정보</a>
	<a href="reserv_ssh">예매하러가기</a>

</div>