<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link  rel="stylesheet" type="text/css" href="NY/css/ServerLbar.css">
<title>왼쪽 바</title>
</head>
<body>

	<div class="ServerList">
		<div id="serverCount">	<!-- 필요없어보인다고 지우면 안됌 -->
			<jsp:include page="../ch/roomchannel/roomChannel.jsp"></jsp:include>
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
				
				<jsp:include page="../ch/room/room.jsp"></jsp:include>
				
			</div>
			
			
				<div class="ServerReplace">
					<ul>
						<li>초대하기</li>
						<li onclick="createRoom()">채팅방 만들기</li>
						<li>서버 나가기</li>
					</ul>
					<div id="inputInviteSpace" style="display:none;"><!-- 확인 -->
						<h2>초대하기</h2>
						<input type="text" id="FUserId" placeholder="초대할 친구 ID" maxlength="20"><br>
						<input type="button" value="초대" class="FuserIdSend">
					</div>
					<div id="inputNameSpace" style="display:none;"><!-- 확인 -->
						<h2>채팅방 생성</h2>
						<input type="text" id="roomName" placeholder="채팅방 이름 입력" maxlength="20"><br>
						<input type="button" value="생성" onclick="createRoomName()">
					</div>
				</div>
		
				<div class="fixProifle">
					<p id="fixProfile_1">
						<img src="https://source.unsplash.com/random">
					</p>
					<div id="ProfileFixText">
						<p id="fixProfile_2">나요네즈<br>
								<span>#6090</span>
						</p>
					</div>
					
					
					<a href="/SET">
						<img id="setIcon"src="NY/img/icon/set_1.png">
					</a>
				</div>
			</div>	
	 </div>

</body>
</html>