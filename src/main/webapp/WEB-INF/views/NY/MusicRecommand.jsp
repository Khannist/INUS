<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%-- <%@page import="java.io.PrintWriter"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.util.List"%> --%>
<!DOCTYPE html>
<html>
<head>
<link href="js/music.js" rel="">
<meta charset="UTF-8">
<title>음악페이지</title>
<link href="NY/css/MusicRecommand.css" rel="stylesheet">
</head>
<body>
	<img class="ToIMG" id="ToSearch" src="NY/img/icon/ToSearch.png" onclick="F_ToSearch()">
	<div class="#">
	    <div class="firstvideo" >
			<iframe
			id = "abc"
			width="560"
			height="315" 
			src="https://www.youtube.com/embed/videoseries?list=PLoA-ETv-zYwncop1d3HZV7AIiGK8rLWaT&feature=share" 
			frameborder="0" 
			allow="autoplay; encrypted-media" 
			allowfullscreen
			></iframe>
		</div>
	</div>
	<div class="RecommandPlayList">
	
	
	
	<!-- [추천 재생목록] TOP100 -->
	
		<div class="top100List">
			<div id="top100List_Text">
				<p class="Command"  id="top100_Title">Top100</p>
			</div>
			<ul>
				<li>
					<img src="NY/img/PageImg/koreaTOP100.png" class="top100Img" id="top100Img_1" onclick="showVideo01()">
					<p>KoreaTop100</p>
					<!-- https://music.youtube.com/playlist?list=PLX_q1hyeET2TQLU4PzpVoSVYxsUnhzKaW&feature=share -->
				</li>
				<li >
					<img src="NY/img/PageImg/koreaMVTOP100.png" class="top100Img" id="top100Img_2" onclick="showVideo02()">
					<p>KoreaMVTop100</p>
					<!-- https://music.youtube.com/playlist?list=PLX_q1hyeET2Tbwcw6_aMvbCgv4HRtsaOh&feature=share -->
				</li>
				<li>
					<img src="NY/img/PageImg/globalTOP100.png" class="top100Img" id="top100Img_3" onclick="showVideo03()" >
					<p>GlobalTop100</p>
					<!-- https://music.youtube.com/playlist?list=PLX_q1hyeET2TyTOUo2FFLNG8H3xk5f5mP&feature=share -->
				</li>
				<li>
					<img src="NY/img/PageImg/globalMVTOP100.png" class="top100Img" id="top100Img_4" onclick="showVideo04()">
					<p>GlobalMVTop100</p>
					<!-- https://music.youtube.com/playlist?list=PLX_q1hyeET2Q1s--AgeUE0vSOxJBQn1L0&feature=share -->
				</li>
			</ul>
		</div>
						
						
	<!-- [추천 재생목록] Keyword -->
		<div class="keywordList">
		
			<div class="keyword_Text">
				<p class="Command" id="keyword_Title">Keyword PlayList</p>
				<input type="button" class="keyword" id="hiphop" value="힙합" onclick="F_hiphopList()">
				<input type="button" class="keyword" id="alonelove" value="짝사랑" onclick="F_aloneloveList()">
				<input type="button" class="keyword" id="PopArtist" value="팝송" onclick="F_PopArtistList()">
				<!--https://music.youtube.com/playlist?list=PLBII8lVtPFBpqddpNxV-5MuuRxPO5yPTK 킹갓곡 팝스테이지-->
				<input type="button" class="keyword" id="relax" value="편안한" onclick="F_Relax()"> 
				<input type="button" class="keyword" id="AniOST" value="애니OST" onclick="F_AniOST()">
				<input type="button" class="keyword" id="Exercise" value="운동" onclick="F_Exercise()">
				<input type="button" class="keyword" id="leavework" value="퇴근" onclick="F_Leavework()">
			</div>
				<div class="sideScroller">
					<div class="sideScroller_2">
						<ul class="hiphopList">
							<li>
								<img src="NY/img/recommandImg/hiphop/hiphopImg_1.jpg" class="KeyImg" id="hiphopList_1">
								<p><span>잔잔한 국힙</span><br>흑수의 세상</p>
							<!-- https://music.youtube.com/playlist?list=PLgbg_mCwtmPIT_mK6JBvc1rgH9Xhw9Nbg -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/hiphop/hiphopImg_2.jpg" class="KeyImg" id="hiphopList_2">
								<p><span>새엘범</span><br>관령 이</p>
							<!-- https://music.youtube.com/playlist?list=PLSKbod1H5pW_WBQccfH2rx5CtUTbCH7Wq -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/hiphop/hiphopImg_3.jpg" class="KeyImg" id="hiphopList_3">
								<p><span>힙합</span><br>이영호</p>
							<!-- https://music.youtube.com/playlist?list=PLhU0JZza06SF0jhjGJlS-yDJNkHcF0K3R -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/hiphop/hiphopImg_4.PNG" class="KeyImg" id="hiphopList_4">
								<p><span>그냥</span><br>히라</p>
							<!-- https://music.youtube.com/playlist?list=PL-vQeTIdSjsd6kzpAui6_84FynskONoh0 -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/hiphop/hiphopImg_5.PNG" class="KeyImg" id="hiphopList_5">
								<p><span>잔잔한 그루브</span><br>류연호</p>
							<!-- https://music.youtube.com/playlist?list=PLo6MVj8CtU8XTt8Z8DSBn47v8QZE8zyi4 -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/hiphop/hiphopImg_6.jpg" class="KeyImg" id="hiphopList_6">
								<p><span>랩재생</span><br>형준김</p>
							<!-- https://music.youtube.com/playlist?list=PLQZsEfgfgTtVqzWM0ttw7b-eqfUit4t8s -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/hiphop/hiphopImg_7.jpg" class="KeyImg" id="hiphopList_7">
								<p><span>스웨그 </span>온<br>국힙/국랩</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_lYPvoz4gPFnKMw_BFojpMk7xRSIqVBkEE -->
							</li>
						</ul>
						<ul class="aloneloveList" style="display: none;">
							<li>
								<img src="NY/img/recommandImg/alonelove/aloneloveImg_1.jpg" class="KeyImg" id="aloneloveList_1">
								<p><span>느낌있게</span><br>호랑</p>
							<!-- https://music.youtube.com/playlist?list=PLLmwQXGbsQma6YZfvPvlKXMvZF4_w9Z3A -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/alonelove/aloneloveImg_2.jpg" class="KeyImg" id="aloneloveList_2">
								<p><span>짝사랑</span><br>SIWON KIM</p>
							<!-- https://music.youtube.com/playlist?list=PLtTWdpTTFqZ2cj7-Suj0bAiH98NsCA-FM -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/alonelove/aloneloveImg_3.jpg" class="KeyImg" id="aloneloveList_3">
								<p><span>모던한 분위기</span><br>GONGS</p>
							<!-- https://music.youtube.com/playlist?list=PLTuUy-Y4gMbZ5bJqO9GNTabcltOJD6SHo -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/alonelove/aloneloveImg_4.jpg" class="KeyImg" id="aloneloveList_4">
								<p><span>그냥</span><br>히라</p>
							<!-- https://music.youtube.com/playlist?list=PL9StwatIujD4dXaMH8mHf-8GX3Lx16GX5 -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/alonelove/aloneloveImg_5.jpg" class="KeyImg" id="aloneloveList_5">
								<p><span>😬💗</span><br>SIWON KIM</p>
							<!-- https://music.youtube.com/playlist?list=PLtTWdpTTFqZ3c3XN9jwBdOa-njNXcV09f -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/alonelove/aloneloveImg_6.jpg" class="KeyImg" id="aloneloveList_6">
								<p><span>블루스카이</span><br>베리브라운</p>
							<!-- https://music.youtube.com/playlist?list=PLpasVL6lVA-xdpBCNPgknUo1MvlSUo92A -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/alonelove/aloneloveImg_7.jpg" class="KeyImg" id="aloneloveList_7">
								<p><span>절절</span><br>YeonSook Hyun</p>
							<!-- https://music.youtube.com/playlist?list=PLte-jRgLRogJfpAQA8z8-SSSUdhGsJJ0H -->
							</li>
						</ul>
						<ul class="PopArtistList" style="display: none;">
							<li>
								<img src="NY/img/recommandImg/popstar/PopArtistImg_1.jpg" class="KeyImg" id="PopArtistList_1">
								<p><span>Charlie Puth</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_lvehly_k4btdBv7RWD1-b1Qyw8uppYCFY -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/popstar/PopArtistImg_2.jpg" class="KeyImg" id="PopArtistList_2">
								<p><span>Ed Sheeran</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_lL718gGQZgQf4jkKYjVbOXHABQCFAYuj0 -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/popstar/PopArtistImg_3.jpg" class="KeyImg" id="PopArtistList_3">
								<p><span>Ariana Grande</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_m6_xW9k1AulRRrn2tpl9gU_Lp3v110LpA -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/popstar/PopArtistImg_4.jpg" class="KeyImg" id="PopArtistList_4">
								<p><span>AJR</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=PLFTljmaaq3TJrktMrwZIouPbvJvpRdeHC -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/popstar/PopArtistImg_5.jpg" class="KeyImg" id="PopArtistList_5">
								<p><span>Dua Lipa</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_mcZWLaApLs3D3SYsdd6r8fZWrr5dSOtI8 -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/popstar/PopArtistImg_6.jpg" class="KeyImg" id="PopArtistList_6">
								<p><span>Lauv</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_k5mJBxoJsxR7CXMnj250gAu-fadBNIX1s -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/popstar/PopArtistImg_7.jpg" class="KeyImg" id="PopArtistList_7">
								<p><span>Justin Bieber</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_kbM5Udvwj2DarPd7LKmd8mqHbcLsAcerg -->
							</li>
						</ul>
						<ul class="RelaxList" style="display: none;">
							<li>
								<img src="NY/img/recommandImg/Relax/RelaxImg_1.jpg" class="KeyImg" id="RelaxList_1">
								<p><span>감성 온: </span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_m9ty3WvAucm7-5KsKdro9_HnocE8LSS9o -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Relax/RelaxImg_2.jpg" class="KeyImg" id="RelaxList_2">
								<p><span>내맘의 노래</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDTMAK5uy_k5UUl0lmrrfrjMpsT0CoMpdcBz1ruAO1k -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Relax/RelaxImg_3.jpg" class="KeyImg" id="RelaxList_3">
								<p><span>데이먼스 이어</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=PLiB2ZlOTzp-BRf3SYu8w5wGlCvGoisuMi -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Relax/RelaxImg_4.jpg" class="KeyImg" id="RelaxList_4">
								<p><span>포장마차</span><br>서진규</p>
							<!-- https://music.youtube.com/watch?v=9e-jcTNFZiw&list=PLCeBnfR2pp-94hr7qc0i4CNfFm_lp9vgt -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Relax/RelaxImg_5.jpg" class="KeyImg" id="RelaxList_5">
								<p><span>일소라 차트</span><br>KYLE</p>
							<!-- https://music.youtube.com/playlist?list=PLM2r05RQ64_oSme66CRKm_qnxGQMrJNCZ -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Relax/RelaxImg_6.jpg" class="KeyImg" id="RelaxList_6">
								<p><span>힘들때</span><br>무진</p>
							<!-- https://music.youtube.com/playlist?list=PLanSAF4vpi9IiX5GKjJ-lk8C2LGOdsG9C -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Relax/RelaxImg_7.jpg" class="KeyImg" id="RelaxList_7">
								<p><span>위로해주는 힐링 가요</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_mL0lDqxdKwRtBbzva3yVjVy-BZ9L7KX5I -->
							</li>
						</ul>
						<ul class="AniOSTList" style="display: none;">
							<li>
								<img src="NY/img/recommandImg/AniOST/AniOSTImg_1.jpg" class="KeyImg" id="AniOSTList_1">
								<p><span>스파이패밀리 </span><br>손예</p>
							<!-- https://music.youtube.com/playlist?list=PL1-UWLSdQLnECGy1W-F9mbJnMl-XlaDVi -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/AniOST/AniOSTImg_2.jpg" class="KeyImg" id="AniOSTList_2">
								<p><span>날씨의 이름은</span><br>애니가좋아</p>
							<!-- https://music.youtube.com/playlist?list=PLmJbWimcTNe8gm3PW4mV6oN2eeXJxW5_Q -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/AniOST/AniOSTImg_3.jpg" class="KeyImg" id="AniOSTList_3">
								<p><span>04년생의 애니</span><br>딤셺</p>
							<!-- https://music.youtube.com/watch?v=vh4IlhtwHeI&list=PLYpdtfYWZmDzQxAyb1fsj_sg0jDZjjQ6D -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/AniOST/AniOSTImg_4.jpg" class="KeyImg" id="AniOSTList_4">
								<p><span>귀멸의 칼날</span><br>이범수</p>
							<!-- https://music.youtube.com/watch?v=I_HU7gx6IHA&list=PLSwa-VwS0-mdbOREb-DsOP-vuzRhuTMXS -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/AniOST/AniOSTImg_5.jpg" class="KeyImg" id="AniOSTList_5">
								<p><span>디지니 한국어버전</span><br>말하는대로</p>
							<!-- https://music.youtube.com/watch?v=EzrfnlwWrI0&list=PLx95nomdvKRlvnd7-IGiuP4wOA33mbXkE -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/AniOST/AniOSTImg_6.jpg" class="KeyImg" id="AniOSTList_6">
								<p><span>디핵</span><br>류세형</p>
							<!-- https://music.youtube.com/playlist?list=PLce8o3AO5vjKddlCYrf3ttqcTdUBUmEvp -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/AniOST/AniOSTImg_6.jpg" class="KeyImg" id="AniOSTList_7">
								<p><span>사진 추가</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=PLoNu5qsBDaYCQ2U6Hswqu-1TA6aXdmC73 -->
							</li>
						</ul>
						<ul class="ExerciseList" style="display: none;">
							<li>
								<img src="NY/img/recommandImg/Exercise/ExerciseImg_1.jpg" class="KeyImg" id="ExerciseList_1">
								<p><span>뼛속까지 단단하게</span><br>손예</p>
							<!-- https://music.youtube.com/watch?v=Ut6ZaXqnj1c&list=PLqvvUcaq_0OnDIjjL7QzuU-idiRqVx1M5 -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Exercise/ExerciseImg_2.jpg" class="KeyImg" id="ExerciseList_2">
								<p><span>신나게</span><br>호랑</p>
							<!-- https://music.youtube.com/playlist?list=PLLmwQXGbsQmYtSBIVxUhozziGB3RUs_aB-->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Exercise/ExerciseImg_3.jpg" class="KeyImg" id="ExerciseList_3">
								<p><span>시원하게</span><br>호랑</p>
							<!-- https://music.youtube.com/playlist?list=PLLmwQXGbsQmYOxtzGd68WS4tWwAZoz44r -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Exercise/ExerciseImg_4.jpg" class="KeyImg" id="ExerciseList_4">
								<p><span>애플top100</span><br>junbe jo</p>
							<!-- https://music.youtube.com/playlist?list=PLw-dGKf44Qdzq6XxILhp0IsNczdYHgvHr-->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Exercise/ExerciseImg_5.jpg" class="KeyImg" id="ExerciseList_5">
								<p><span>국내 댄스</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_kkpBwv_1TI0ymnmeo_ZHqpjC44ndCUNTk -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Exercise/ExerciseImg_6.jpg" class="KeyImg" id="ExerciseList_6">
								<p><span>뇌를 깨우는 비트</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_k16Jz1rrCopbgWM2ajYI8KFyLHgbBVVMk -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/Exercise/ExerciseImg_7.jpg" class="KeyImg" id="ExerciseList_7">
								<p><span>ENFP 모이자.</span><br>엔프피세상</p>
							<!-- https://music.youtube.com/playlist?list=PLiwzbJb9V5yDy7k4vDG-cZBoy7slX-sNR -->
							</li>
						</ul>
						<ul class="leaveworkList" style="display: none;">
							<li>
								<img src="NY/img/recommandImg/leavework/leaveworkImg_1.jpg" class="KeyImg" id="leaveworkList_1">
								<p><span>산뜻한 초저녁</span><br>무</p>
							<!-- https://music.youtube.com/playlist?list=PLJ9y6MY8l9DirjA8ptVi2pwQkxrb0X2jD -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/leavework/leaveworkImg_2.jpg" class="KeyImg" id="leaveworkList_2">
								<p><span>뚝섬 11번출구</span><br>조성민</p>
							<!-- https://music.youtube.com/playlist?list=PLu1e8X5bKBImReD_-G1zQzvXMA7_7Z7Yb-->
							</li> 
							<li>
								<img src="NY/img/recommandImg/leavework/leaveworkImg_3.jpg" class="KeyImg" id="leaveworkList_3">
								<p><span>회사뿌셔</span><br>수연</p>
							<!-- https://music.youtube.com/watch?v=UznsP7hLWKc&list=PLdfZbgOpp0BcOMlmqIgUPvpc_RihX5JsD -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/leavework/leaveworkImg_4.jpg" class="KeyImg" id="leaveworkList_4">
								<p><span>BLACKPINK</span><br>YouTube Music</p>
							<!-- https://music.youtube.com/playlist?list=RDCLAK5uy_nLNY4ReQKH2kx5U23cyGMHql9ciHD9RSM-->
							</li> 
							<li>
								<img src="NY/img/recommandImg/leavework/leaveworkImg_5.jpg" class="KeyImg" id="leaveworkList_5">
								<p><span>때잉뽀</span><br>연소록</p>
							<!-- https://music.youtube.com/watch?v=AAxre3pB4SQ&list=PLjftMfSk54_LrKxY47vzjkb03Ti2EttoP -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/leavework/leaveworkImg_6.jpg" class="KeyImg" id="leaveworkList_6">
								<p><span>백수여름</span><br>A songa</p>
							<!-- https://music.youtube.com/playlist?list=PLn7CZfgDjbV4tuXeTTsAqhvTiDBB8jfcQ -->
							</li> 
							<li>
								<img src="NY/img/recommandImg/leavework/leaveworkImg_7.jpg" class="KeyImg" id="leaveworkList_7">
								<p><span>불금전용</span><br>김민주</p>
							<!-- https://music.youtube.com/watch?v=t8ERhuId1h4&list=PLoZaF2VQLrUHlGZV9WvuAj1Sz5wXlfjzR -->
							</li>
						</ul>
					</div>
				</div>	
		</div>
	
	
	</div>


</body>
</html>