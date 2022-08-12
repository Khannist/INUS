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
<link href="ny/css/IndexCss.css" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
<title>인덱스 화면(로그인화면)</title>
</head>
<body>
<input type="button" value="로그인" onclick="location.href='signin'">
<input type="button" value="회원가입" onclick="location.href='signup'">
<input type="button" value="서버이동" onclick="location.href='SERVER'">
<input type="button" value="더미페이지" onclick="location.href='DUMMY'">
<div class="container">
	<img src="/NY/img/icon/logo_2.png" class="icon" id="logoIcon" onclick="location.href='/MAIN'">

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