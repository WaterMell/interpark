<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약하기 인서트</title>
<style type="text/css">
.thing {
	color: yellow;
}

</style>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>

$(document).ready(function(){ 
	$("input[type='checkbox']").on("click" , function(){ 
		let count = $("input:checked[type='checkbox']").length; 
		    if(count > ${view_cnt}){ 
		    $(this).prop("checked" , false); 
                    //또는 this.checked=false;
			alert("선택 갯수까지만 선택할 수 있습니다."); 
		  }		 
	}); 
}); 

function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("view_cnt");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
}
<%int a = 0;%>
	
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<br>
	<c:forEach var="Detail" items="${getDetail_list }">
		<table style=" border: 1px solid black; width: 300px; height : 100px; margin: auto; text-align: center;" >
				<tr align="center">
				<td><a href="get_Detail_insert?gd_num=${Detail.gd_num }">${Detail.gd_title }</a>
				</td>
			</tr>
		</table>
		<%-- 		<li><a href="get_Detail_insert?gd_num=${Detail.gd_num }">${Detail.gd_title }</a>
		</li> --%>
	</c:forEach>
	
	
	<c:if test="${not empty get_schedule_list }">
		<br>
		<c:forEach var="schedule" items="${get_schedule_list }">
			<fmt:formatDate var = "formatRegDate" value="${schedule.sd_date}" pattern="yyyy.MM.dd" />
			<table style=" border: 1px solid black; width: 300px; height : 100px; margin: auto; text-align: center;" >
				<tr>
					<td><a href="get_schedule?sd_num=${schedule.sd_num }&view_cnt=1">${formatRegDate } : ${schedule.start_time}</a></td>
				</tr>
			</table>

		</c:forEach>
	</c:if>

	<br>
	
			<!-- <table border="2" align = "center" width="350" height="150"> -->
	<c:if test="${not empty getseatList_choose }">
		<form action="get_schedule">
			<table style="border: 3px solid black; width:350; height: 100px; margin: auto; text-align: center;">
			<th colspan="4"> 관람 인원 선택</th>
			<tr>
				<td align = "center" width="85" >
					<input type='checkbox' name='view_cnt' value='1' onclick='checkOnlyOne(this);' />1명 
				</td>
				<td align = "center" width="85">
					<input type='checkbox' name='view_cnt' value='2' onclick='checkOnlyOne(this);' />2명 
				</td>
				<td align = "center" width="85">
					<input type='checkbox' name='view_cnt' value='3' onclick='checkOnlyOne(this);' />3명 
				</td>
				<td align = "center" width="85">
					<input type='checkbox' name='view_cnt' value='4' onclick='checkOnlyOne(this);' />4명 <br>
				</td>
			</tr>
			<tr>
				<td colspan="2" align = "center">
					<input type="hidden" name="sd_num" value=${Schedule.sd_num }>
					<input type="submit" value="선택완료" /><br>
				</td>
				<td align = "center">
					   선택 인원
				</td>
				<td align = "center">
					${view_cnt }명
				</td>
			</tr>
			</table>
		</form> 
		<br><br>
		<br><br>
		<br>
		<c:if test="${gr_num eq '5'}">
			전시회 예매~~~<br>
			<form action=reserv_Exhibi>
				<c:forEach var="seat" items="${getseatList_choose }">
				<input type='hidden' name='data' value='${seat.st_num }/${Schedule.sd_num }/${view_cnt}' >
			</c:forEach>
			<input type="submit" value="예매 창으로"> 
			
		</c:if>
		<c:if test="${gr_num ne '5'}">
			<c:set var="i" value="0" />
			<c:set var="j" value="5" />
			<form action=reserv_seat_do>
				<table style="border: 5px solid black; width:600px; margin: auto; text-align: center; font-size: 15pt;">
					<th colspan="5"> 무대 </th>
						<tr>
							<c:forEach var="seat" items="${getseatList_choose }">
								<c:if test="${get_seatsave_list.size() eq 0}">
								<%--<a href="get_seat?st_num=${seat.st_num }&sd_num=${Schedule.sd_num}">${seat.st_num }</a>--%>						
									<td style="border: 1px solid black; height: 100px; width:100px;">
										<input type="checkbox" name='data' value='${seat.st_num }/${Schedule.sd_num }' >${seat.st_num }
									</td>
								<c:set var="i" value="${i+1 }" />
								</c:if>
								<c:forEach var="seatsave" items="${get_seatsave_list }">
									<c:choose>
										<c:when test="${seatsave.st_num eq seat.st_num && seatsave.seat_able eq 1}">
											<td style="border: 1px solid black; height:100px; width:100px;">
												<input type="checkbox" disabled ><del>${seat.st_num }</del>
											</td>
											<c:set var="i" value="${i+1 }" />
										</c:when>
										<c:otherwise>
											<%
												a++;
											pageContext.setAttribute("test_size", a);
											%>
										</c:otherwise>
									</c:choose>
									<c:if test="${get_seatsave_list.size() eq test_size}">
									<%-- <a href="get_seat?st_num=${seat.st_num }&sd_num=${Schedule.sd_num}">${seat.st_num }</a>	--%>							
										<td style="border: 1px solid black; height:100px; width:100px;">
											<input type="checkbox" name='data' value='${seat.st_num }/${Schedule.sd_num }' >${seat.st_num }
										</td>
										<c:set var="i" value="${i+1 }" />
									</c:if>
								</c:forEach>
								<%
									a = 0;
								pageContext.setAttribute("test_size", a);
								%>
 								<c:if test="${i%j ==0 }">
 									</tr>
 									<tr>
								</c:if> 
							</c:forEach>
						</tr>
						<tr>
							<td colspan="3" border="0"></td>
							<td colspan="2">
								<input type="submit" value="예매 창으로"> 
							</td>
						</tr>
				</table> 
			</form>
		</c:if>
	</c:if>
	
	
	

	<c:if test="${not empty total_list }">
		<form action="insert_test_do" method = "post">
			<c:forEach var="seat" items="${total_list }">
				<fmt:formatDate var = "formatRegDate" value="${seat.sd_date}" pattern="yyyy.MM.dd" />
				<table style="border: 5px solid black; width:600px; margin: auto; text-align: center; font-size: 15pt;">
					<th colspan="2"> 예매 내역 </th>
						<tr>
							<td>
								공연(행사) 제목
							</td>
							<td>
								${seat.gd_title}
							</td>
						</tr>
						
						<tr>
							<td>
								행사(공연) 날짜
							</td>
							<td>
								${formatRegDate } : ${seat.start_time}
							</td>
						</tr>	
						
						<tr>
							<td>
								선택 좌석
							</td>
							<td>
								${seat.st_num }
							</td>
						</tr>
											
						<tr>
							<td>
								가격 
							</td>
							<td>
								${seat.st_price }
							</td>
						</tr>
				</table>
				<input type = 'hidden' name="st_price" value='${seat.st_price }'>		
				<input type = 'hidden' name="st_num" value='${seat.st_num }'><br>
				<input type = 'hidden' name="user_id" value='${user}'>
				<input type = 'hidden' name="sd_num" value='${seat.sd_num}'> 
			</c:forEach>
			<p style="text-align:center;">
			총 가격 : ${total_price }　　<input type="submit" value="예매 완료" /><br>
			</p>
		</form>
	</c:if>
	
	<c:if test="${not empty total_Exhibi }">
		<form action="insert_test_do" method = "post">
			<c:forEach var="Exhibi" items="${total_Exhibi }">
				<fmt:formatDate var = "formatRegDate" value="${Exhibi.sd_date}" pattern="yyyy.MM.dd" />
				<table style="border: 5px solid black; width:600px; margin: auto; text-align: center; font-size: 15pt;">
					<th colspan="2"> 예매 내역 </th>
						<tr>
							<td>
								공연(행사) 제목
							</td>
							<td>
								${Exhibi.gd_title}
							</td>
						</tr>
						
						<tr>
							<td>
								행사(공연) 날짜
							</td>
							<td>
								${formatRegDate } : ${Exhibi.start_time}
							</td>
						</tr>				
						<tr>
							<td>
								가격 
							</td>
							<td>
								${Exhibi.st_price }
							</td>
						</tr>
				</table>
				<input type = 'hidden' name="st_price" value='${Exhibi.st_price }'>		
				<input type = 'hidden' name="st_num" value='${Exhibi.st_num }'><br>
				<input type = 'hidden' name="user_id" value='${user}'>
				<input type = 'hidden' name="sd_num" value='${Exhibi.sd_num}'>
			</c:forEach> 
			<p style="text-align:center;">
			총 가격 : ${total_price }　　<input type="submit" value="예매 완료" /><br>
			</p>
		</form>
	</c:if>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>