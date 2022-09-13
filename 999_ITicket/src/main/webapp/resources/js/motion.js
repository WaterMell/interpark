function visual(i) {
    var obj = {
        0: "http://ticketimage.interpark.com/TCMS4/Main/202202/MainVisual_28febe63-d939-41a2-9857-ed9977d87ad8.jpg",
        1: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_a8d2bda5-cb43-4e18-97ec-bdb77d3379db.jpg",
        2: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_c1924ca0-77fa-48db-829c-f77c261b18d5.jpg",

        3: "http://ticketimage.interpark.com/TCMS4/Main/202202/MainVisual_28febe63-d939-41a2-9857-ed9977d87ad8.jpg",
        4: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_a8d2bda5-cb43-4e18-97ec-bdb77d3379db.jpg",
        5: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_c1924ca0-77fa-48db-829c-f77c261b18d5.jpg",

        6: "http://ticketimage.interpark.com/TCMS4/Main/202202/MainVisual_28febe63-d939-41a2-9857-ed9977d87ad8.jpg",
        7: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_a8d2bda5-cb43-4e18-97ec-bdb77d3379db.jpg",
        8: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_c1924ca0-77fa-48db-829c-f77c261b18d5.jpg",

        9: "http://ticketimage.interpark.com/TCMS4/Main/202202/MainVisual_28febe63-d939-41a2-9857-ed9977d87ad8.jpg",
        10: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_a8d2bda5-cb43-4e18-97ec-bdb77d3379db.jpg",
        11: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_c1924ca0-77fa-48db-829c-f77c261b18d5.jpg",

        12: "http://ticketimage.interpark.com/TCMS4/Main/202202/MainVisual_28febe63-d939-41a2-9857-ed9977d87ad8.jpg",
        13: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_a8d2bda5-cb43-4e18-97ec-bdb77d3379db.jpg",
        14: "http://ticketimage.interpark.com/TCMS4/Main/202205/MainVisual_c1924ca0-77fa-48db-829c-f77c261b18d5.jpg",
    };

    $(".visual_wrap>ul>li:eq(" + i + ")").click(function () {
        var imageUrl = obj[i];
        $(".visual").css({
            "background-image": "url(" + imageUrl + ")",
            "background-position": ":center",
            "background-size": "cover"
        });
    });
}
$(function () {
    visual(0);
    visual(1);
    visual(2);
    visual(3);
    visual(4);
    visual(5);
    visual(6);
    visual(7);
    visual(8);
    visual(9);
    visual(10);
    visual(11);
    visual(12);
    visual(13);
    visual(14);


    $(".ranking1>button").addClass("add_ranking_box");
    $(".ranking1").click(function () {
        $(".contentText1").html(">라이선스/내한 뮤지컬<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">창작 뮤지컬<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22001534_p_s.jpg");
        $(".img2").attr("src", "images/22000970_p_s.jpg");
        $(".img3").attr("src", "images/22001534_p_s.jpg");
        $(".img4").attr("src", "images/22000970_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking1>button").addClass("add_ranking_box");
    });

    $(".ranking2").click(function () {
        $(".contentText1").html(">국내/내한 콘서트<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">인디<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22000970_p_s.jpg");
        $(".img2").attr("src", "images/22001534_p_s.jpg");
        $(".img3").attr("src", "images/22000970_p_s.jpg");
        $(".img4").attr("src", "images/22001534_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking2>button").addClass("add_ranking_box");
    });

    $(".ranking3").click(function () {
        $(".contentText1").html(">리미티드런 연극<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">스테디셀러 연극<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22001534_p_s.jpg");
        $(".img2").attr("src", "images/22000970_p_s.jpg");
        $(".img3").attr("src", "images/22001534_p_s.jpg");
        $(".img4").attr("src", "images/22000970_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking3>button").addClass("add_ranking_box");
    });

    $(".ranking4").click(function () {
        $(".contentText1").html(">클래식/오페라<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">무용<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22000970_p_s.jpg");
        $(".img2").attr("src", "images/22001534_p_s.jpg");
        $(".img3").attr("src", "images/22000970_p_s.jpg");
        $(".img4").attr("src", "images/22001534_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking4>button").addClass("add_ranking_box");
    });

    $(".ranking5").click(function () {
        $(".contentText1").html(">스포츠<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">레저<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22001534_p_s.jpg");
        $(".img2").attr("src", "images/22000970_p_s.jpg");
        $(".img3").attr("src", "images/22001534_p_s.jpg");
        $(".img4").attr("src", "images/22000970_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking5>button").addClass("add_ranking_box");
    });

    $(".ranking6").click(function () {
        $(".contentText1").html(">레저<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">레저<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22000970_p_s.jpg");
        $(".img2").attr("src", "images/22001534_p_s.jpg");
        $(".img3").attr("src", "images/22000970_p_s.jpg");
        $(".img4").attr("src", "images/22001534_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking6>button").addClass("add_ranking_box");
    });

    $(".ranking7").click(function () {
        $(".contentText1").html(">전시<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">행사<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22000970_p_s.jpg");
        $(".img2").attr("src", "images/22001534_p_s.jpg");
        $(".img3").attr("src", "images/22000970_p_s.jpg");
        $(".img4").attr("src", "images/22001534_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking7>button").addClass("add_ranking_box");
    });
    $(".ranking8").click(function () {
        $(".contentText1").html(">뮤지컬<a href='#' class='contentmore'>더보기</a>");
        $(".contentText2").html(">체험<a href='#' class='contentmore'>더보기</a>");
        $(".img1").attr("src", "images/22000970_p_s.jpg");
        $(".img2").attr("src", "images/22001534_p_s.jpg");
        $(".img3").attr("src", "images/22000970_p_s.jpg");
        $(".img4").attr("src", "images/22001534_p_s.jpg");
        $(".ranking_btn>button").removeClass("add_ranking_box");
        $(".ranking8>button").addClass("add_ranking_box");
    });

    $(".tap1").mouseover(function () {
        $(".contents_control").hide();
        $(".contents1").show();
    });
    $(".tap2").mouseover(function () {
        $(".contents_control").hide();
        $(".contents2").show();
        $(".tap1>a").attr("color", "red");
    });
    $(".tap3").mouseover(function () {
        $(".contents_control").hide();
        $(".contents3").show();
    });
    $(".tap4").mouseover(function () {
        $(".contents_control").hide();
        $(".contents4").show();
    });
    $(".tap5").mouseover(function () {
        $(".contents_control").hide();
        $(".contents5").show();
    });

    $(".mypageli").mouseover(function () {
        $(".mypage").fadeIn();
    });
    $(".mypage").mouseleave(function () {
        $(".mypage").fadeOut();
    });

    $(".langli").mouseover(function () {
        $(".lang").fadeIn();
    });
    $(".lang").mouseleave(function () {
        $(".lang").fadeOut();
    });

    $(".gnb>li:eq(0)>a").click(function () {
        $(".allmenu").toggle();
    });



    $(".ifr_ranking dl dd ul li:eq(0) button").click(function () {
        $(".rank_all").show();
        $(".rank_lic").hide();
        $(".rank_creat").hide();
        $(".ifr_ranking dl ul li:eq(0) button").css('border-bottom', '2px solid #333');
        $(".ifr_ranking dl ul li:eq(1) button").css('border-bottom', 0);
        $(".ifr_ranking dl ul li:eq(2) button").css('border-bottom', 0);
    });
    $(".ifr_ranking dl dd ul li:eq(1) button").click(function () {
        $(".rank_lic").show();
        $(".rank_all").hide();
        $(".rank_creat").hide();
        $(".ifr_ranking dl ul li:eq(0) button").css('border-bottom', 0);
        $(".ifr_ranking dl ul li:eq(1) button").css('border-bottom', '2px solid #333');
        $(".ifr_ranking dl ul li:eq(2) button").css('border-bottom', 0);
    });
    $(".ifr_ranking dl dd ul li:eq(2) button").click(function () {
        $(".rank_creat").show();
        $(".rank_lic").hide();
        $(".rank_all").hide();
        $(".ifr_ranking dl ul li:eq(0) button").css('border-bottom', 0);
        $(".ifr_ranking dl ul li:eq(1) button").css('border-bottom', 0);
        $(".ifr_ranking dl ul li:eq(2) button").css('border-bottom', '2px solid #333');
    });

    $(".sc_big ul li:eq(0) a").mouseover(function () {
        $(".bn_big img").attr("src", "sub_images/con2_banner1.gif")
    });
    $(".sc_big ul li:eq(1) a").mouseover(function () {
        $(".bn_big img").attr("src", "sub_images/con2_banner2.gif")
    });
    $(".sc_big ul li:eq(2) a").mouseover(function () {
        $(".bn_big img").attr("src", "sub_images/con2_banner3.gif")
    });
    $(".sc_big ul li:eq(3) a").mouseover(function () {
        $(".bn_big img").attr("src", "sub_images/con2_banner4.gif")
    });
    $(".sc_big ul li:eq(4) a").mouseover(function () {
        $(".bn_big img").attr("src", "sub_images/con2_banner5.gif")
    });
    $(".sc_big ul li:eq(5) a").mouseover(function () {
        $(".bn_big img").attr("src", "sub_images/con2_banner6.gif")
    });









});
