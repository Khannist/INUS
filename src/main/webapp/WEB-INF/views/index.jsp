<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
<script src="jquery/jquery-3.6.0.min.js"></script>
<script src="jquery/jquery-migrate-1.4.1.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merienda+One&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<<<<<<< HEAD
<link href="ny/css/IndexCss.css" rel="stylesheet">
=======
<link href="NY/css/IndexCss.css" rel="stylesheet">
>>>>>>> INUS/NY
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
<title>인덱스 화면(로그인화면)</title>
</head>
<body>
<!-- <p><a href="/MAIN">메인페이지로(임시문구)</a></p>
<p><a href="/MUSIC">음악출력(임시문구)</a></p> -->
<!-- <script type="text/javascript">
	setTimeout(function() {
	    $('.companyIcon').animate({top : '40px'}, 600);
	  }, 2200);
  
	$(document).ready(function() {
	var mouseWheelEvent = 0;
    var idx_lgth = $(".slider>li").length;
    var srt = 0;

	//첫페이지 이동
	function moveOnePage(){
     console.log('page 1 start');
     //페이지 위치 저장
     var offsetTop = $('#page1').offset().top;
     //페이지 이동
     moveScroll(offsetTop);
     $("section>a:first-of-type").addClass('on').siblings().removeClass('on');
    }
	//두번째 페이지 이동
    function moveTwoPage(){
      console.log('page 2 start');
      var offsetTop = $('#page2').offset().top;
      moveScroll(offsetTop);
      effectScroll('#productHeadLine', '#productMore', '#productTitle');
      $("section>a:nth-of-type(2)").addClass('on').siblings().removeClass('on');
    }


  	
  	//스크롤 이동
    function moveScroll(location) {
      $('html, body').animate({
        scrollTop: location
      }, 400);
    }

  	
  	
  	
</script> -->
<input type="button" value="서버이동" onclick="location.href='SERVER'">
<div class="container">
	<img src="NY/img/icon/logo_2.png" class="icon" id="logoIcon" onclick="location.href='/MAIN'">

<!--       페이지1-------------------------------->
        <div class="page" id="page1">
            <p class="headLine" id="introHeadLine">
                지금 듣고싶은
                <br>
                음악은
                <br>
                무엇인가요?
                <br>
                <input type="button" value="CIRCLE" id="ToLeft" style="border: none; background: transparent;">
                <!-- <span id="submit-button" class="bdText" onclick="Toleft()">LOG IN</span> -->
            	<br>
            </p>
            
        </div>
        
        
</div>

<script>
$(function( ) {
   $("#ToLeft").click(function(){
		 $("#ToLeft").parent.next().css({"position":"absolute"},
				 					  {"left":"20%"});
	 });

});
</script>
    
</body>
</html>