<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link type="text/css" rel="stylesheet" href="bs/css/inus.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
<header>
<h1>게시판</h1>
</header>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
<section>
<div class="ServerList">
		<div id="serverCount">	<!-- 필요없어보인다고 지우면 안됌 -->
		<ul>
			<li>
				<img class="serverImg" src="https://source.unsplash.com/random">	
			</li>
			<li>
				<a href="/AddServer">
				<img class="serverImg" id="plusServerImg" src="https://source.unsplash.com/random">
				</a>
			</li>
		</ul>
		</div>
</div>
<div class="ChatAndFriendList">
	<div class="chatAndFriendheader">
		<div class="ChatList">
			<div class="headerP" >
				<p id="ChatName">채팅방이름</p>
				<img class="ChatAndFriend_Icon" id="chatIcon" src="NY/img/icon/ChatListIcon.png" onclick="F_openrReplace()">
				<img class="ChatAndFriend_Icon" id="chatIcon_2" style="display: none;" src="NY/img/icon/ChatListIcon_2.png" onclick="F_closeReplace()">
			</div>
			<!-- 채팅방이름 7자 이내 -->
		</div>
		<div class="ServerReplace">
			<ul>
				<li>초대하기</li>
				<li>채팅방 만들기</li>
				<li>서버 나가기</li>
			</ul>
				<div id="inputNameSpace" style="display:none;"><!-- 확인 -->
					<input type="text" id="roomName"><br>
					<input type="button" value="생성">
				</div>
		</div>
				<div class="fixProifle">
               <div id="fixProfile_1">
                  <img src="https://source.unsplash.com/random">
               </div>
               <div id="ProfileFixText">
                  <p id="fixProfile_2">나요네즈<br>
                  <span>#6090</span>
                  </p>
               </div>
               
               
               <a href="/SET">
                  <img id="setIcon"src="set_1.png">
               </a>
            </div>	
	 </div>
<div class="device">
  <div class="instagram">
	<div class="scroll">
            <main class="content">
			<c:forEach items="${boardList}" var="boardList">
                <div class="post">
                    <div class="post-header">
                        <img class="user-thumb" src="https://storage.googleapis.com/mkts/walter.jpg" alt="Walter">
                        <div class="user-details">
                            <strong class="name">${boardList.inus_userName}</strong>
                            <span class="location">수원시, 팔달구</span>
                        </div>
                        <div class="post-menu">
                            <span class="menu">&nbsp;</span>
                        </div>
                    </div>
                    <a onclick="location.href='boardView?inus_boardNum=${boardList.inus_boardNum}'">
                    <img src="https://image.freepik.com/psd-gratuitas/instagram-post-mockup_15879-4.jpg" alt="post" class="post-photo">
                    </a>
                    <div class="post-footer">
					
                        <div class="buttons">
                            <div class="post-btn"><span class="like">&nbsp;</span></div>
                            <div class="post-btn"><span class="comn">&nbsp;</span></div>
                            <div class="spacer">&nbsp;</div>
                            <div class="post-btn"><span class="save">&nbsp;</span></div>
                        </div>

                        <div class="likes">
                            <img src="https://storage.googleapis.com/mkts/walter.jpg" alt="user" class="user-like">
                            <strong>${boardList.inus_userName}</strong>의 글을<strong>8</strong>명이 좋아요을 눌렀습니다.
                        </div>

                        <div class="comments">
                            <p>
                                <strong>${boardList.inus_userName}</strong>&nbsp;&nbsp;${boardList.inus_content}
                            </p>
                        </div>
                        <span class="time"><fmt:formatDate value="${boardList.inus_Date}" type="date" dateStyle="short"/></span>
                    </div>
                </div>
                </c:forEach>
            </main>
			</div>
        </div>
	</div>
</section>
<script type="text/javascript">
  AOS.init();
</script>
</body>
</html>