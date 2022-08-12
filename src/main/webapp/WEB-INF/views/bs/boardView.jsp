<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link type="text/css" rel="stylesheet" href="bs/css/inus.css">
<link type="text/css" rel="stylesheet" href="bs/css/comment.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/0535b153a9.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<header>
<img src="bs/css/image/last_logo.jpg" id="logo">
</header>
<body>
<section>
<div class="MainLbar">
   <article>
   <div class="ServerList">
         <div id="serverCount">   <!-- 필요없어보인다고 지우면 안됌 -->
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
               <img class="ChatAndFriend_Icon" id="chatIcon" src="bs/css/image/ChatListIcon.png" onclick="F_openrReplace()">
               <img class="ChatAndFriend_Icon" id="chatIcon_2" style="display: none;" src="bs/css/image/ChatListIcon_2.png" onclick="F_closeReplace()">
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
                     <img id="setIcon"src="bs/css/image/setting.png">
                  </a>
               </div>   
       </div>
   </div>
   </article>
</div>
<article>
<!-- feed -->
<div class="device">   
  <div class="instagram"> 
     <div class="search-box">
       <button class="btn-search"><i class="fas fa-search"></i></button>
       <input type="text" class="input-search" placeholder="Type to Search...">
  </div>
   <div class="scroll">
            <main class="content" data-aos="flip-left"
     data-aos-duration="1000">
         <c:forEach items="${boardView}" var="boardView">
         	<input type="hidden" id="inus_boardNum" name="${boardView.inus_boardNum}" value="${boardView.inus_boardNum}">
         	<input type="hidden" id="inus_userName" name="${boardView.inus_userName}" value="${boardView.inus_userName}">
            <div class="postpade" >
                <div class="post">
                    <div class="post-header">
                        <img class="user-thumb" src="https://storage.googleapis.com/mkts/walter.jpg" alt="Walter">
                        <div class="user-details">
                            <strong class="name">${boardView.inus_userName}</strong>
                            <span class="location">수원시, 팔달구</span>
                        </div>
                        <div class="post-menu">
                            <span class="menu">&nbsp;</span>
                        </div>
                    </div>
                    <img src="https://image.freepik.com/psd-gratuitas/instagram-post-mockup_15879-4.jpg" alt="post" class="post-photo">
                    <div class="post-footer">
                        <div class="buttons">
                            <div class="post-btn"><span class="like">&nbsp;</span></div>
                            <div class="post-btn"><span class="comn">&nbsp;</span></div>
                            <div class="spacer">&nbsp;</div>
                            <div class="post-btn"><span class="save">&nbsp;</span></div>
                        </div>
                        <div class="likes">
                            <img src="https://storage.googleapis.com/mkts/walter.jpg" alt="user" class="user-like">
                            <strong>${boardView.inus_userName}</strong>의 글을<strong>8</strong>명이 좋아요을 눌렀습니다.
                        </div>

                        <div class="comments">
                            <p>
                                <strong>${boardView.inus_userName}</strong>&nbsp;&nbsp;${boardView.inus_content}
                            </p>
                        </div>
                        <span class="time"><fmt:formatDate value="${boardView.inus_Date}" type="date" dateStyle="short"/></span>
                        <%@ include file="comment.jsp"%>
                    </div>
                </div>
               </div>
           
         </c:forEach>
			
   </main>
</div>
         <!-- bottom navigation -->
         <div class="bottomNav">
            <nav class="menu">
            <input type="radio" name="menu" id="one" checked>
            <input type="radio" name="menu" id="two">
            <input type="radio" name="menu" id="three">
      <div class="list">
         <div class="link-wrap">
            <label for="one">
               <a href="/boardList" style="color:#7b9acc">
               <i class="fa-solid fa-house"></i>
               <span>Home</span>
               </a>
            </label>
            <label for="two">
               <a href="/boardWrite" style="color:#7b9acc">
               <i class="fa-solid fa-pen-to-square"></i>
               <span>Write</span>
               </a>
               
            </label>
            <p class="p-line"></p>
            <label for="three">
               <a href="#" style="color:#7b9acc">
               <i class="fa-brands fa-hotjar"></i>
               <span>Hot</span>
               </a>
            </label>
         </div>
      </div>
</nav>
         </div>
   </div>
<!-- right slide bar -->
        <aside class="profile2">
   <input type="checkbox" id="check">
    <div class="sidebar" >
      <center>
        <img src="https://source.unsplash.com/random" class="profile_image" alt="">
        <h4>Jessica</h4>
      </center>
      <div>
	      <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
	      <a href="#"><i class="fas fa-cogs"></i><span>Components</span></a>
	      <a href="#"><i class="fas fa-table"></i><span>Tables</span></a>
	      <a href="#"><i class="fas fa-th"></i><span>Forms</span></a>
	      <a href="#"><i class="fas fa-info-circle"></i><span>About</span></a>
	      <a href="#"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
      </div>
      <div class="snsBtn">
         <main>
          <!-- sns 아이콘 -->
          <!-- Media Button Element -->
          <section class="btn-section">
              <button class="btn-cp"><i class="fab fa-lg first-logo fa-codepen"></i><i class="fab fa-lg second-logo fa-codepen"></i></button>
              <button class="btn-tw"><i class="fab fa-lg first-logo fa-twitter"></i><i class="fab fa-lg second-logo fa-twitter"></i></button>
              <button class="btn-fb"><i class="fab fa-lg first-logo fa-facebook-f"></i><i class="fab fa-lg second-logo fa-facebook-f"></i></button>
              <button class="btn-ig"><i class="fab fa-lg first-logo fa-instagram"></i><i class="fab fa-lg second-logo fa-instagram"></i></button>
          </section>
          <!-- Media Button Element -->
          <!-- ==================== -->
      </main>
      </div>
    </div>
    <!--sidebar end-->
    </aside> 
</div>
   </article>
   
</section>


<script type="text/javascript">
  AOS.init();
</script>
<script type="text/javascript" src="bs/js/reply.js"></script>
</body>
</html>