<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
.rank ul li {list-style-type: none;}
/*.rank2 ul li {list-style-type: none;}
.rank3 ul li {list-style-type: none;}
.rank4 ul li {list-style-type: none;}
.rank5 ul li {list-style-type: none;}*/
 
.rankall{

	margin-left: auto;
	margin-right: auto;
	
}
.ranking{

  		display: flex;
		width: 85%;
        }
 
.menu{
	    border :1px solid red;
	    float :left;
	    width:20%;
      }
 
 .rank {
 
        position: relative;
        overflow: hidden;
       	border: 1px solid red;
		box-sizing: border-box;
		background-color: lightgray;
		width:80%;
 	   }
	   
   	#musical { width: 3000px;
   	
    }
	#musical li {
	 	
		list-style: none;
        float: left;
        width: 200px;

	}
	#musical img { width: 180px; }



#concert li {
		list-style: none;
        float: left;
        width: 200px;
} 
#classic li {
		list-style: none;
        float: left;
        width: 200px;
}
#act li {
		list-style: none;
        float: left;
        width: 200px;
}#exhibition li{
		list-style: none;
        float: left;
        width: 200px;
}


</style>


<head>
<meta charset="UTF-8">
<title>랭킹입니다.</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <link rel="stylesheet" type="text/css" href="resources/css/style.css">
 <link rel="stylesheet" type="text/css" href="resources/css/sub_style.css">
<script>
	
	$(document).ready(function(){
        let $list = $("#musical");
        console.log(":: 이미지 갯수 : " + $("#musical li").length);

        //앞의 이미지  복사해서 맨뒤에 붙이기
        //console.log($("#banner li:lt()").clone());
        $list.append( $("#musical li:lt(5)").clone() );
        console.log(":: 추가 후 이미지 갯수 : " + $("#musical li").length);

        // next : 좌측 마진 값에서 -200 처리
        let clickCnt = 0;
        $("#next").click(function(){
            $list.stop(true); //기존 애니메이션 있으면 중지(큐 삭제)
            clickCnt++;
            console.log("clickCnt : " + clickCnt);
            if (clickCnt > 6) { //사용 이미지 갯수보다 많아지면
                $list.css("margin-left", "0px");
                clickCnt = 1;
            } 
            $list.animate({"margin-left" : -200 * clickCnt + "px"}, 300);
        });

        // (실습) prev : 이전버튼 클릭시 처리
        $("#prev").click(function(){
            $list.stop(true);
            clickCnt--;
            console.log("clickCnt : " + clickCnt);
            if (clickCnt < 0) {
                $list.css("margin-left", -200 * 5 + "px");
                clickCnt = 6; //마지막 이전 위치로 이동(갯수 - 1)
            }
            $list.animate({"margin-left" : -200 * clickCnt + "px"}, 300);
        });
    });
</script>


</head>

<jsp:include page="header.jsp"></jsp:include><!-- 최상단 상단 (로그인,회원가입,예매확인/취소, 마이페이지) -->
<body>
	<h1>랭킹입니다</h1>

<div class ="rankingTitle">
		<div class ="rankall">
		
			<div class="ranking">
				<div class ="menu">
				 	<h3>뮤지컬</h3>
					<ul>
					<li><a href="ranking2.jpg">전체</a></li>
					<li><a href="#">창작</a></li>
					<li><a href="#">라이선스/내한</a></li>
					</ul>
				</div>	
				<div class= "rank">
					<ul id = "musical">

						<li><a href = "getDetail?gd_num=13" ><img src="resources/posterImages/posterImages/aidaPoster.gif"></a></li>
						<li><a href = "getDetail?gd_num=1" ><img src="resources/posterImages/deathNotePoster.gif"></a></li>
						<li><a href = "getDetail?gd_num=19"><img src="resources/posterImages/posterImages/bluemanPoster.gif"></a></li>
						<li><a href = "getDetail?gd_num=20"><img src="resources/pic/mata.gif"></a></li>
						<li><a href = "getDetail?gd_num=14"><img src="resources/posterImages/posterImages/sandClockPoster.gif"></a></li>
						<li><a href = "#"><img src="resources/posterImages/posterImages/dialogueIntheDark.gif"></a></li>
						<li><a href = # ><img src="resources/pic/sa.gif"></a></li>
						<li><a href = # ><img src="resources/pic/let.gif"></a></li>
						<li><a href = # ><img src="resources/pic/vicent.gif"></a></li>
						<li><a href = # ><img src="resources/pic/pan.gif"></a></li>
						
					</ul>
						  
					  <p>
					  		<a href="#" id="prev">
			                <img src="resources/pic/prev_btn.png" width="50">
			            	</a>
			            	어떻게 옆으로    
					    	<a href="#" id="next">
					        <img src="resources/pic/next_btn.png" width="50">
					        </a>	
			  		  </p>
			      
				</div>
			</div>
			
			<div class="ranking">
				<div class ="menu">
					<h3>콘서트</h3>
					<ul>
					<li><a href="ranking2.jpg">전체</a></li>
					<li><a href="#">국내</a></li>
					<li><a href="#">내한</a></li>
					<li><a href="#">인디/토크</a></li>
					</ul>
				</div>
				<div class= "rank">
					<ul id="concert">
						<li>2-1</li>
						<li>2-2</li>
						<li>2-3</li>
						<li>2-4</li>
						<li>2-5</li>
					</ul>
				</div>
			</div>
			
			<div class="ranking">					
				<div class ="menu">
					<h3>연극</h3>
					<ul>
					<li><a href="ranking2.jpg">전체</a></li>
					<li><a href="#">리미티드런</a></li>
					<li><a href="#">스테디셀러</a></li>
					</ul>
				</div>
				<div class= "rank">
					<ul id="act">
						<li>3-1</li>
						<li>3-2</li>
						<li>3-3</li>
						<li>3-4</li>
						<li>3-5</li>
					</ul>
				</div>
			</div>
					
			<div class="ranking">					
				<div class ="menu">
					<h3>클래식</h3>
					<ul>
						<li><a href="ranking2.jpg">전체</a></li>
						<li><a href="#">클레식/오페라</a></li>
						<li><a href="#">국악</a></li>
						<li><a href="#">무용</a></li>
					</ul>
				</div>
				<div class= "rank">
					<ul id ="classic">
						<li>4-1</li>
						<li>4-2</li>
						<li>4-3</li>
						<li>4-4</li>
						<li>4-5</li>
					</ul>
				</div>
			</div>	
			
			<div class="ranking">					
				<div class ="menu">
					<h3>전시/행사</h3>
					<ul>
						<li><a href="ranking2.jpg">전체</a></li>
						<li><a href="#">전시</a></li>
						<li><a href="#">행사</a></li>
					</ul>
				</div>	
				<div class= "rank">
					<ul id="exhibition">
						<li>5-1</li>
						
						<li>5-2</li>
						<li>5-3</li>
						<li>5-4</li>
						<li>5-5</li>
					</ul>
				</div>
	  		</div>
		</div>
</div>

 <jsp:include page="footer.jsp"></jsp:include><!-- 하단 회사정보 등 -->
</body>
</html>