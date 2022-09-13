<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<!-- header.jsp -->
<style>
	.logout {
		font-size: 11px;
	    margin-right: 12px;
	    color: #666666;
	}
	.searchBtn {
		display: inline-block;
	    position: absolute;
	    margin-left: -57px;
	    margin-top: 2px;
	}
</style>
<header id="header" class="header_bg">
        <div class="header_wrap">
            <div id="gateway">
                <div class="gateway_wrap">
                   <!--  <div class="gnbArea_left">
                        <ul>
                            <li>
                                <a href="#">홈</a>
                            </li>
                            <li>
                                <a href="#">도서</a>
                            </li>
                            <li>
                                <a href="#">티켓</a>
                            </li>
                            <li>
                                <a href="#">투어</a>
                            </li>
                        </ul>
                    </div> -->
<%-- <header>
	<div class="header">
		<a href="./">홈(logo)</a><br>
		<a href="login">로그인</a>
		<form:form method="post" action="logout">
			<a href="./login">로그아웃</a>
		</form:form>
	</div>
</header> --%>
                    <div class="gnbArea_right">
                        <ul>
							<sec:authorize access="isAnonymous()"> <!-- 인증되지 않은 사용자 -->	
								<li><a href="login" ><span>로그인</span></a></li>
	                            <li><a href="join"><span>회원가입</span></a></li>
							</sec:authorize>
                       		<sec:authorize access="isAuthenticated()"> <!-- 인증된 사용자 -->
								<li>
									<form:form action="logout" method="post">
										<a href="logout" class="logout" >로그아웃</a>
									</form:form>
								</li>
								<li><a href="userinfo">회원정보</a></li>
							</sec:authorize>
                            <li>
                                <a href="#">예매확인/취소</a>
                            </li>

                            <li class="mypageli">
                                <a href="mypage?user_id=${user }">마이페이지</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div id="wrapGNB">
                <div class="wrapGNB_wrap">
                    <h1>
                        <a href="./"><img src="resources/images/logo.GIF" alt="로고"></a>
                    </h1>
                    <div class="search">
                        <form action="search" method="get">
                            <fieldset>
                                <legend>검색폼</legend>
                                <div class="box">
                                    <input type="text" title="검색어입력" name="keyword">
                                    <button type="submit" class="searchBtn"><img src="resources/images/btn_search.gif" alt="검색"></button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>

            <div class="gnbWrap">
                <nav>
                    <ul class="gnb">
                        <!-- <li>
                            <a href="#"><img src="resources/images/menu.GIF" alt="전체메뉴보기"></a>
                            <div class="allmenu">
                                <ul>
                                    <li>
                                        <a href="#">뮤지컬</a>
                                        <a href="#">오리지널/내한공연</a>
                                        <a href="#">라이선스</a>
                                        <a href="#">창작뮤지컬</a>
                                        <a href="#">넌버벌 퍼포먼스</a>
                                        <a href="#">패키지 공연</a>
                                        <a href="#">MD샵</a>
                                    </li>
                                    <li>
                                        <a href="#">연극</a>
                                        <a href="#">전체</a>
                                        <a href="#">패키지공연</a>
                                        <a href="#">주간랭킹순</a>
                                        <a href="#">MD샵</a>
                                    </li>
                                    <li>
                                        <a href="#">콘서트</a>
                                        <a href="#">발라드</a>
                                        <a href="#">락/메탈</a>
                                        <a href="#">랩/힙합</a>
                                        <a href="#">재즈/소울</a>
                                        <a href="#">디너쇼</a>
                                        <a href="#">포크/트로트</a>
                                        <a href="#">내한공연</a>
                                        <a href="#">페스티벌</a>
                                        <a href="#">팬클럽</a>
                                        <a href="#">인디</a>
                                        <a href="#">토크/강연</a>
                                        <a href="#">MD샵</a>
                                    </li>
                                    <li>
                                        <a href="#">클래식/무용</a>
                                        <a href="#">클래식</a>
                                        <a href="#">오페라</a>
                                        <a href="#">발레/무용</a>
                                        <a href="#">국악</a>
                                        <a href="#">주간랭킹순</a>
                                    </li>
                                    <li>
                                        <a href="#">랭킹</a>
                                        <a href="#">뮤지컬</a>
                                        <a href="#">콘서트</a>
                                        <a href="#">연극</a>
                                        <a href="#">클래식/무용</a>
                                        <a href="#">아동/가족</a>
                                        <a href="#">전시/행사</a>
                                        <a href="#">스포츠</a>
                                        <a href="#">레저</a>
                                    </li>
                                   
                                   
                                </ul>
                                <ul>
                                    
                                </ul>
                            </div>
                        </li> -->
                        <li class="musical">
                            <a href="musical">뮤지컬</a>
                            <ul>
                                <li>
                                    <a href="#" id="gnbTitle">뮤지컬</a>
                                    <a href="#">오리지널/내한공연</a>
                                    <a href="#">라이선스</a>
                                    <a href="#">창작뮤지컬</a>
                                    <a href="#">넌버벌 퍼포먼스</a>
                                    <a href="#">MD샵</a>
                                </li>
                                <li class="notice">
                                    <a href="#">티켓오픈 공지</a>
                                    <a href="#">지역별/</a>
                                    <a href="#">날짜별 예매</a>
                                </li>
                                <li class="recommend">
                                    <span>뮤지컬</span><br><span>추천</span>
                                    <div>
                                        <a href="#"><img src="resources/images/22000970_p_s.jpg" alt="데스노트"></a>
                                        <a href="#"><img src="resources/images/22001534_p_s.jpg" alt="아이다"></a>
                                        <a href="#"><img src="resources/images/22004658_p_s.jpg" alt="하데스타운"></a>
                                        <a href="#"><img src="resources/images/22006220_p_s.jpg" alt="지킬엔하이드"></a>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">advertisement</a>
                                </li>
                            </ul>
                        </li>
                        <li class="#">
                            <a href="concert">콘서트</a>
                            <ul>
                                <li>
                                    <a href="#" id="gnbTitle">콘서트</a>
                                    <a href="#">발라드</a>
                                    <a href="#">내한공연</a>
                                    <a href="#">락/메탈</a>
                                    <a href="#">페스티벌</a>
                                    <a href="#">랩/힙합</a>
                                    <a href="#">팬클럽</a>
                                    <a href="#">재즈/소울</a>
                                    <a href="#">인디</a>
                                    <a href="#">디너쇼</a>
                                    <a href="#">토크/강연</a>
                                    <a href="#">포크/트로트</a>
                                    <a href="#">MD샵</a>
                                </li>
                                <li class="notice">
                                    <a href="#">티켓오픈 공지</a>
                                    <a href="#">지역별/</a>
                                    <a href="#">날짜별 예매</a>
                                </li>
                                <li class="recommend">
                                    <span>콘서트</span><br><span>추천</span>
                                    <div>
                                        <a href="#"><img src="resources/images/22000970_p_s.jpg" alt="데스노트"></a>
                                        <a href="#"><img src="resources/images/22001534_p_s.jpg" alt="아이다"></a>
                                        <a href="#"><img src="resources/images/22004658_p_s.jpg" alt="하데스타운"></a>
                                        <a href="#"><img src="resources/images/22006220_p_s.jpg" alt="지킬엔하이드"></a>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">advertisement</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="playing">연극</a>
                            <ul>
                                <li>
                                    <a href="#" id="gnbTitle">연극</a>
                                    <a href="#">연극</a>
                                    <a href="#">MD샵</a>
                                </li>
                                <li class="notice">
                                    <a href="#">티켓오픈 공지</a>
                                    <a href="#">지역별/</a>
                                    <a href="#">날짜별 예매</a>
                                </li>
                                <li class="recommend">
                                    <span>연극<br>추천</span>
                                    <a href="#"><img src="resources/images/22000970_p_s.jpg" alt="데스노트"></a>
                                    <a href="#"><img src="resources/images/22001534_p_s.jpg" alt="아이다"></a>
                                    <a href="#"><img src="resources/images/22004658_p_s.jpg" alt="하데스타운"></a>
                                    <a href="#"><img src="resources/images/22006220_p_s.jpg" alt="지킬엔하이드"></a>
                                </li>
                                <li>
                                    <a href="#"><img src="resources/images/" alt=""></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="classic">클래식/무용</a>
                            <ul>
                                <li>
                                    <a href="#" id="gnbTitle">클래식/무용</a>
                                    <a href="#">클래식</a>
                                    <a href="#">오페라</a>
                                    <a href="#">발레/무용</a>
                                    <a href="#">국악</a>
                                </li>
                                <li class="notice">
                                    <a href="#">티켓오픈 공지</a>
                                    <a href="#">지역별/</a>
                                    <a href="#">날짜별 예매</a>
                                </li>
                                <li class="recommend">
                                    <span>클래식/무용<br>추천</span>
                                    <a href="#"><img src="resources/images/22000970_p_s.jpg" alt="데스노트"></a>
                                    <a href="#"><img src="resources/images/22001534_p_s.jpg" alt="아이다"></a>
                                    <a href="#"><img src="resources/images/22004658_p_s.jpg" alt="하데스타운"></a>
                                    <a href="#"><img src="resources/images/22006220_p_s.jpg" alt="지킬엔하이드"></a>
                                </li>
                                <li>
                                    <a href="#"><img src="resources/images/" alt=""></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="exhibition">전시/행사</a>
                            <ul>
                                <li>
                                    <a href="#" id="gnbTitle">전시/행사</a>
                                    <a href="#">전시</a>
                                    <a href="#">뮤지엄</a>
                                    <a href="#">아동체험전</a>
                                    <a href="#">행사/축제</a>
                                    <a href="#">클래스</a>
                                    <a href="#">MD샵</a>
                                </li>
                                <li class="notice">
                                    <a href="#">티켓오픈 공지</a>
                                    <a href="#">지역별/</a>
                                    <a href="#">날짜별 예매</a>
                                </li>
                                <li class="recommend">
                                    <span>전시/행사<br>추천</span>
                                    <a href="#"><img src="resources/images/22000970_p_s.jpg" alt="데스노트"></a>
                                    <a href="#"><img src="resources/images/22001534_p_s.jpg" alt="아이다"></a>
                                    <a href="#"><img src="resources/images/22004658_p_s.jpg" alt="하데스타운"></a>
                                    <a href="#"><img src="resources/images/22006220_p_s.jpg" alt="지킬엔하이드"></a>
                                </li>
                                <li>
                                    <a href="#"><img src="resources/images/" alt=""></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="ranking">랭킹</a>
                            <ul>
                                <li>
                                    <a href="#" id="gnbTitle">랭킹</a>
                                    <a href="#">뮤지컬</a>
                                    <a href="#">콘서트</a>
                                    <a href="#">연극</a>
                                    <a href="#">클래식/무용</a>
                                    <a href="#">아동/가족</a>
                                    <a href="#">전시/행사</a>
                                    <a href="#">스포츠</a>
                                    <a href="#">레저</a>
                                </li>
                                <li class="recommend">
                                    <span>랭킹<br>추천</span>
                                    <a href="#"><img src="resources/images/22000970_p_s.jpg" alt="데스노트"></a>
                                    <a href="#"><img src="resources/images/22001534_p_s.jpg" alt="아이다"></a>
                                    <a href="#"><img src="resources/images/22004658_p_s.jpg" alt="하데스타운"></a>
                                    <a href="#"><img src="resources/images/22006220_p_s.jpg" alt="지킬엔하이드"></a>
                                </li>
                                <li>
                                    <a href="#"><img src="resources/images/" alt=""></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>