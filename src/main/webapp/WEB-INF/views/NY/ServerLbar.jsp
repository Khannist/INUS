<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/NY/ServerLbar.css" rel="stylesheet">
<title>왼쪽 바</title>
</head>
<body>

	<div class="ServerList">
		<div id="serverCount">	<!-- 필요없어보인다고 지우면 안됌 -->
		<ul>
			<li>
				<img class="serverImg" src="https://source.unsplash.com/random">	
			</li>
			<li>
				<a href="/AddServer">
				<img class="serverImg" id="plusServerImg" src="img/NY/icon/plus2.png">
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
						<img class="ChatAndFriend_Icon" id="chatIcon" src="img/NY/icon/ChatListIcon.png" onclick="F_openrReplace()">
						<img class="ChatAndFriend_Icon" id="chatIcon_2" style="display: none;" src="img/NY/icon/ChatListIcon_2.png" onclick="F_closeReplace()">
				</div>
				<!-- 채팅방이름 7자 이내 -->
				
				<ul>	
					<li>
						<img src="https://source.unsplash.com/random">
						<p>나연다현치현</p> <!-- 이름설정할 수 있나? -->
					</li>
					<li>
						<img src="https://source.unsplash.com/random">
						<p>게임을 합쉬다</p>
					</li>
					<li>
						<img src="https://source.unsplash.com/random">
						<p>공부를 합쉬다</p>
					</li>
				</ul>
				
			</div>
			
			
				<div class="ServerReplace">
					<ul>
						<li>초대하기</li>
						<li>서버 나가기</li>
					</ul>
				</div>
		
				<!-- <div class="fixProifle">
					<p id="fixProfile_1">
						<img src="https://source.unsplash.com/random">
					</p>
					<div id="ProfileFixText">
						<p id="fixProfile_2">나요네즈<br>
								<span>#6090</span>
						</p>
					</div>
					
					
					<a href="/SET">
						<img id="setIcon"src="img/NY/icon/set_1.png">
					</a>
				</div> -->
			</div>	
	 </div>

</body>
</html>