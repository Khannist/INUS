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
								<li><p onclick="F_FreindSet()">친구요청</p></li>
							</ul>
					</div>
					<div class="SetList" id="ServerSet">
					<h4>서버 설정</h4>
						<ul>
							<li><p onclick="F_GiftSet()">선물 인벤토리</p></li>
						</ul>
					</div>
					<div class="SetList" id="AppSet">
					<h4>앱 설정</h4>
						<ul>
							<li><p onclick="F_DisplaySet()">디스플레이</p></li>
							<li><p onclick="F_NoticeSet()">알림</p></li>
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
			
			<div class="MidSetList" id="FreindSet">
				<h3>친구 요청</h3>
				<p id="FreindSet_p">친구요청을 보낼 수 있는 사람</p>
				<div class="friendRequire" id="Anyone">
					<label>누구나</label>
					<input type="checkbox" class="checkBoxCss" id="Anyonecheckbox">
				</div>
				<div class="friendRequire" id="FtoF">
					<label>친구의 친구</label>
					<input type="checkbox" class="checkBoxCss" id="FtoFcheckbox">
				</div>
				<div class="friendRequire" id="Server">
					<label>서버 멤버</label>
					<input type="checkbox" class="checkBoxCss" id="Servercheckbox">
				</div>

			</div>
			
			
			<div class="MidSetList" id="DisplaySet">
				<h3>디스플레이</h3>
				<div class="theme">
					<p>테마</p>
					<div class="themeList" id="themeBlack">
						<input type="radio">
						<label>어두운 테마</label>
					</div>
					<div class="themeList" id="themeWhite">
						<input type="radio">
						<label>밝은 테마</label>
					</div>
				</div>
			</div>
			<div class="MidSetList" id="NoticeSet"></div>


			<div class="MidSetList" id="NewSkillSet"></div>
			<div class="MidSetList" id="LogOutSet" onclick="F_LogOut()">
				<div id="Logoutdiv">
					<h3>로그아웃</h3>
					<p>정말로 로그아웃 하시겠어요?</p>
					<div id="CheckLogout">
						<button class="logOutClass" id="LogOutFake">취소</button>
						<button class="logOutClass" id="LogOutReal">로그아웃</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="NY/js/Set.js"></script>
</body>
</html>