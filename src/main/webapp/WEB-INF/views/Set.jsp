<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
crossorigin="anonymous"></script>
<link href="NY/css/Set.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="SetLbar">
			<div class="UlList">
				<div class="SetScrollBar">
					<div class="SetList" id="UserSet">
						<h4>사용자 설정</h4>
							<ul>
								<li><p onclick="F_AccountSet()">내 계정</p></li>
								<li><p onclick="F_ProfileSet()">프로필</p></li>
								<li><p onclick="F_SecuritySet()">개인정보 보호 및 보안</p></li>
								<li><p onclick="F_ConnectSet()">연결</p></li>
								<li><p onclick="F_FreindSet()">친구관리</p></li>
							</ul>
					</div>
					<div class="SetList" id="ServerSet">
					<h4>서버 설정</h4>
						<ul>
							<li><p onclick="F_ServerBoostSet()">서버 부스트</p></li>
							<li><p onclick="F_MidServerSet()">서버 관리</p></li>
							<li><p onclick="F_GiftSet()">선물 인벤토리</p></li>
						</ul>
					</div>
					<div class="SetList" id="AppSet">
					<h4>앱 설정</h4>
						<ul>
							<li><p onclick="F_DisplaySet()">디스플레이</p></li>
							<li><p onclick="F_AccessibilitySet()">접근성</p></li>
							<li><p onclick="F_VideoSet()">비디오</p></li>
							<li><p onclick="F_TextPicSet()">텍스트 및 사진</p></li>
							<li><p onclick="F_NoticeSet()">알림</p></li>
							<li><p onclick="F_ShortcutSet()">단축키</p></li>
						</ul>
					</div>
					<div class="SetList" id="MusicSet">
					<h4>음악 설정</h4>
						<ul>
							<li><p  onclick="F_SoundSet()">사운드</p></li>
							<li><p  onclick="F_PlayListSet()">플레이리스트</p></li>
							<li><p  onclick="F_RecommandVideoSet()">추천 영상 여부</p></li>
							<li><p  onclick="F_AutoplaySet()">자동재생</p></li>
						</ul>
					</div>
					<div class="SetList" id="AddSet">
						<ul>
							<li><p onclick="F_NewSkillSet()">새로운 기능</p></li>
							<li><p onclick="F_LogOutSet()">로그아웃</p></li>
						</ul>
					</div>
					<div class="SetList" id="AddSet">
						<img alt="" src="">
						<img alt="" src="">
						<img alt="" src="">
						<p>MusicInus<br> from window10</p>
					</div>
				</div>
			</div>
		</div>
		<div class="SetMidbar">
			<img src="NY/img/icon/SetToBack.png" id="Back">
			<div class="MidSetList" id="AccountSet">
				<div class="Scrolldiv">
					<div class="ScrollDiv2">
						<h3>내 계정</h3>
						<div class="profile">
							<div class="midProfile">
								<img src="https://source.unsplash.com/random" id="BigProfile">
								<p id="BiguserName">list.name</p>
								<button type="submit" id="userProfileReplace" onclick="F_ProfileSet()">사용자 프로필 편집</button>
							</div>
							<div class="profileInpo">
										<div class="profileBottom">
											<div id="profileName">
												<p id="nameTitle">사용자명</p>
												<p id="nameReal">list.name</p>
												<button type="submit" class="replaceP" id="nameRe">수정</button>
											</div>
											<div class="bottomEmail">
											</div>
												<div id="profileEmail">
													<p id="nameTitle">이메일</p>
													<p id="nameReal">list.email</p>
													<button type="submit" class="replaceP" id="emailRe">수정</button>
												</div>
										</div>
								<div class="ProfileSet02">
									<div>
										<h2>비밀번호와 인증</h2>
										<button id="btn01">비밀번호 변경하기</button>
										<p id="PWtext">2단계 인증<br>
										MusicInus 계정을 보호하기 위해 2단계 인증을 활성화 할 수 있어요. 이 기능을 사용하면, 로그인 시 핸드폰에 있는 인증코드를 입력해야 MusicInus 이용이 가능해요. 
										</p>
										<button id="btn02">2단계 인증 활성화하기</button>
									</div>
								</div>
								<div class="ProfileSet03">
									<h3>계정 제거</h3>
									<div id="ProfileSet03Text">
										<p>계정을 비활성하면 언제든 복구할 수 있어요.</p>
										<button id="Fbtn03">계정 비활성화</button>
										<button id="Sbtn03">계정 삭제하기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
			<div class="MidSetList" id="ProfileSet">
				<h3>프로필</h3>
				<button id="ProfileSet_btn01" class="button" onclick="F_UserProfile">사용자 프로필</button>
				<button id="ProfileSet_btn02" class="button" onclick="F_ServerProfile">서버 프로필</button>
				<div class="MOProfile" id="UserProfile">
					<div class="LeftPart">
						<div class="AbataDiv">
							<h3>아바타</h3>
							<button class="ProfileBtn" id="LeftBtn">아바타 변경하기</button>
							<button class="ProfileBtn" id="RightBtn">아바타 제거</button>
						</div>
					</div>
					<div class="RightPart"></div>
				</div>
				<div class="MOProfile" id="ServerProfile"></div>
			</div>
			
			
			
			
			
			
			
			
			
			<div class="MidSetList" id="SecuritySet">SecuritySet</div>
			<div class="MidSetList" id="ConnectSet">ConnectSet</div>
			<div class="MidSetList" id="FreindSet">FreindSet</div>
			
			<div class="MidSetList" id="ServerBoostSet"></div>
			<div class="MidSetList" id="MidServerSet"></div>
			<div class="MidSetList" id="GiftSet"></div>
			
			<div class="MidSetList" id="DisplaySet"></div>
			<div class="MidSetList" id="AccessibilitySet"></div>
			<div class="MidSetList" id="VideoSet"></div>
			<div class="MidSetList" id="TextPicSet"></div>
			<div class="MidSetList" id="NoticeSet"></div>
			<div class="MidSetList" id="ShortcutSet"></div>
			
			<div class="MidSetList" id="SoundSet"></div>
			<div class="MidSetList" id="PlayListSet"></div>
			<div class="MidSetList" id="RecommandVideoSet"></div>
			<div class="MidSetList" id="AutoplaySet"></div>
			
			<div class="MidSetList" id="NewSkillSet"></div>
			<div class="MidSetList" id="LogOutSet"></div>
		</div>
	</div>
	
	<script type="text/javascript" src="NY/js/Set.js"></script>
</body>
</html>