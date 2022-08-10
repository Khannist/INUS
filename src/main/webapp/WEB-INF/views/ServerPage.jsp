<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link  rel="stylesheet" type="text/css" href="ny/css/ServerPage.css">
<link  rel="stylesheet" type="text/css" href="ch/css/chat/chat.css">
<link  rel="stylesheet" type="text/css" href="ch/css/room/room.css">
<link  rel="stylesheet" type="text/css" href="ch/css/channel.css">

<title>Insert title here</title>
</head>
<body>
<div class="container"> 
	<input type="hidden" name="userId" id="userId" value="B">
	<input type="hidden" name="roomCode" id="roomCode">
	<input type="hidden" name="channelCode" id="channelCode">
	<input type="hidden" name="username" id="username" value="비">
	<jsp:include page="NY/ServerHeader.jsp"></jsp:include>

	<div class="ServerLbar">
		<jsp:include page="NY/ServerLbar.jsp"></jsp:include>
	</div>
        	

		

      <div class="Midbar">
		      <div class="MusicPart">
		      	<div class="MusicRecommand">
		      		<jsp:include page="NY/MusicRecommand.jsp"></jsp:include>
		      	</div>
		      	<div class="MusicSearch">
		      		<jsp:include page="NY/MusicSearch.jsp"></jsp:include>
		      	</div>
		    	<div class="ServerFriendList">
		      		<jsp:include page="NY/ServerFriendList.jsp"></jsp:include>
		      	</div>
		      </div>
	      	<!--.ChatPage 여기에 채팅 jsp -->
	      	<div class="ChatPage">
	      		<!-- 뮤직페이지 열고 닫는 아이콘 -->
				<img src="NY/img/icon/gogoIcon.png" class="pageIcon" id="OpenMusic" onclick="FMusicRecommand()">
	      		<img src="NY/img/icon/closeMusicIcon.png" class="pageIcon" id="CloseMusic" onclick="FC_MusicRecommand()">
	      		 
				<jsp:include page="ch/chat/chat.jsp"></jsp:include>
				
	      		<div class="inputFix">
	      			<div class="ChatInput">
		        		<input id="chatRealInput" type="text" placeholder="채팅" onkeydown="send(event)">
		        		<img src="NY/img/icon/chatIcon/ghostIcon.png">
		        		<img src="NY/img/icon/chatIcon/smilIecon.png">
	       			</div>
	       			
	       				<input id="chatRealsubmit" type="button" value="보내기" onclick="sendChatSc()">
	       				
	      		</div>
	      	</div>
	
		
	</div>
	<div id="channelNameInput" style="display: none;">
		<h2>새 채널 생성하기</h2>
		<div id="channelThumbFrame">
			<img class="channelThumb">
			<input type="file" id="chnThumbFile" style="display:none;"  disabled="disabled">
			<label for="chnThumbFile" class="chnThumbFile" onclick="alert('업데이트 예정입니다.')">파일 업로드</label>
		</div>
		<input type="text" name="channelName" id="channelName" placeholder="채널 이름 입력">
		<input type="button" name="inputChannelName" id="inputChannelName" value="채널 생성" onclick="channelCreateName();">
	</div>
</div>
<script type="text/javascript" src="/NY/js/ServerPage.js"></script>
<script type="text/javascript" src="/NY/js/MusicRecommand.js"></script>
<script type="text/javascript" src="/NY/js/Set.js"></script>
<script type="text/javascript" src="/NY/js/mainTest.js"></script>
<script type="text/javascript" src="/ch/js/channel/channel.js"></script>
<script type="text/javascript" src="/ch/js/room/room.js"></script>
<script type="text/javascript" src="/ch/js/room/roomdel.js"></script>
<script type="text/javascript" src="/ch/js/room/roomInvite.js"></script>
<script type="text/javascript" src="/ch/js/channel/channeldel.js"></script>
<script type="text/javascript" src="/ch/js/stomp/stompChat.js"></script>

<script type="text/javascript">

//채팅 옆으로 밀고 뮤직 페이지 등장
function FMusicRecommand(){
    document.querySelector('.MusicRecommand').style.display = "block";   	//뮤직 페이지 나타남
    document.querySelector('.MusicSearch').style.display = "none"; 		//검색 페이지 없어짐*/
    document.querySelector('.ServerFriendList').style.display = "none"; 		//검색 페이지 없어짐*/
    document.querySelector('#CloseMusic').style.display = "block";			//닫히는 아이콘 나타남
    document.querySelector('#OpenMusic').style.display = "none";			//열리는 아이콘 없어짐*/
    document.querySelector('.ChatPage').style.width = "943px";    		
    document.querySelector('#chating').style.width= "95%";		//채팅페이지 사이즈 조절
    document.querySelector('.ChatInput').style.width = "700px";   			//채팅방 사이즈 줄여짐
    document.querySelector('#chatRealInput').style.width = "550px";			//채팅인풋 크기조절*/
    document.querySelector('#chatRealsubmit').style.width = "150px";			//채팅 보내기 크기조절
}
//뮤직 페이지 밀고 채팅 크게
function FC_MusicRecommand(){
    document.querySelector('.MusicRecommand').style.display = "none";   //뮤직 페이지 없어짐
    document.querySelector('.MusicSearch').style.display = "none"; 		//검색 페이지 없어짐
    document.querySelector('.ServerFriendList').style.display = "none"; 		//검색 페이지 없어짐*/
    document.querySelector('#CloseMusic').style.display = "none";		//닫히는 아이콘 나타남
    document.querySelector('#OpenMusic').style.display = "block";		//열리는 아이콘 없어짐
    document.querySelector('.ChatPage').style.width = "1543px";    		
    document.querySelector('.ChatInput').style.width = "1200px";   			//채팅방 사이즈 줄여짐
    document.querySelector('#chatRealInput').style.width = "900px";			//채팅인풋 크기조절*/
    document.querySelector('#chatRealsubmit').style.width = "220px";			//채팅 보내기 크기조절
}


//뮤직페이지 없애고 음악검색 페이지 생김
function F_ToSearch(){
    document.querySelector('.MusicSearch').style.display = "block";	// 검색페이지 열림
    document.querySelector('.MusicRecommand').style.display = "none";    // 음악페이지 닫힘
    document.querySelector('.ServerFriendList').style.display = "none";    // 서버에 속한 친구리스트  닫힘
    document.querySelector('#ToSearch').style.display = "none";	//검색 아이콘 없어짐
    document.querySelector('#ToMusic').style.display = "block";	//뮤직 아이콘 나타남

}
//검색페이지 없어지고 친구페이지 나타남
function F_ToFriendList(){
    document.querySelector('.ServerFriendList').style.display = "block";	//서버에 속한 친구리스트 열림
    document.querySelector('.MusicSearch').style.display = "none";   //검색페이지 사라짐
    document.querySelector('.MusicRecommand').style.display = "none";   //뮤직페이지 사라짐
    document.querySelector('#ToMusic').style.display = "none";	//뮤직 아이콘 없어짐
    document.querySelector('#ToMusicRe').style.display = "block";	//검색 아이콘 나타남

}

//친구페이지 없어지고 음악 추천페이지 나타남(첫페이지)
function F_ToMusicRe(){
    document.querySelector('.MusicRecommand').style.display = "block";	//서버에 속한 친구리스트 열림
    document.querySelector('.MusicSearch').style.display = "none";   //검색페이지 사라짐
    document.querySelector('.ServerFriendList').style.display = "none";   //뮤직페이지 사라짐
    document.querySelector('#ToMusicRe').style.display = "none";	//뮤직 아이콘 없어짐
    document.querySelector('#ToSearch').style.display = "block";	//검색 아이콘 나타남

}




//서버 수정 페이지 나타남
function F_openrReplace(){
    document.querySelector('.ServerReplace').style.display = "block";   //서버 수정 페이지 나타남
    document.querySelector('#chatIcon_2').style.display = "block";   //닫히는 아이콘 나타남
    document.querySelector('#chatIcon').style.display = "none";   //열리는 아이콘 없어짐

}
//서버 수정 페이지 없어짐
function F_closeReplace(){
    document.querySelector('.ServerReplace').style.display = "none";   //서버 수정 페이지 없어짐
    document.querySelector('#chatIcon_2').style.display = "none";         //열리는 아이콘 나타남
    document.querySelector('#chatIcon').style.display = "block";      //닫히는 아이콘 없어짐  
}




/* 비디오 출력 부분 (효율적이게 수정(1/2))*/


	/*top100*/
	function showVideo01(){
		document.querySelector('.firstvideo').style.display = "none"; //화면에서 감춤
	       document.querySelector('.koreatop100_v').style.display = "block";	//화면에 표시
	       document.querySelector('.koreamvtop100_v').style.display = "none";    
	       document.querySelector('.globaltop100_v').style.display = "none"; 
	       document.querySelector('.globalmvtop100_v').style.display = "none"; 
	   }
	function showVideo02(){
		document.querySelector('.firstvideo').style.display = "none"; //화면에서 감춤
	       document.querySelector('.koreamvtop100_v').style.display = "block";	//화면에 표시
	       document.querySelector('.koreatop100_v').style.display = "none";    
	       document.querySelector('.globaltop100_v').style.display = "none"; 
	       document.querySelector('.globalmvtop100_v').style.display = "none"; 
	   }
	function showVideo03(){
		document.querySelector('.firstvideo').style.display = "none"; //화면에서 감춤
	       document.querySelector('.globaltop100_v').style.display = "block";	//화면에 표시
	       document.querySelector('.koreamvtop100_v').style.display = "none";    
	       document.querySelector('.koreatop100_v').style.display = "none"; 
	       document.querySelector('.globalmvtop100_v').style.display = "none"; 
	   }
	function showVideo04(){
		document.querySelector('.firstvideo').style.display = "none"; //화면에서 감춤
	       document.querySelector('.globalmvtop100_v').style.display = "block";	//화면에 표시
	       document.querySelector('.koreamvtop100_v').style.display = "none";    
	       document.querySelector('.globaltop100_v').style.display = "none"; 
	       document.querySelector('.koreatop100_v').style.display = "none"; 
	   }




/*[keywordList]ul 나타나고 없애게 하는 스크립트 (효율적이게 수정(2/2))*/

//힙합
	function F_hiphopList(){
		document.querySelector('.aloneloveList').style.display = "none"; 
        document.querySelector('.hiphopList').style.display = "block";	//화면에 표시
        document.querySelector('.PopArtistList').style.display = "none";
        document.querySelector('.RelaxList').style.display = "none";
        document.querySelector('.AniOSTList').style.display = "none";
        document.querySelector('.ExerciseList').style.display = "none";
        document.querySelector('.leaveworkList').style.display = "none";
    }
//짝사랑
	function F_aloneloveList(){ 
		document.querySelector('.hiphopList').style.display = "none"; 
        document.querySelector('.aloneloveList').style.display = "block";	//화면에 표시
        document.querySelector('.PopArtistList').style.display = "none";
        document.querySelector('.RelaxList').style.display = "none";
        document.querySelector('.AniOSTList').style.display = "none";
        document.querySelector('.ExerciseList').style.display = "none";
        document.querySelector('.leaveworkList').style.display = "none";
    }
//팝스타
	function F_PopArtistList(){
		document.querySelector('.hiphopList').style.display = "none"; 
        document.querySelector('.PopArtistList').style.display = "block";	//화면에 표시
        document.querySelector('.aloneloveList').style.display = "none";
        document.querySelector('.RelaxList').style.display = "none";
        document.querySelector('.AniOSTList').style.display = "none";
        document.querySelector('.ExerciseList').style.display = "none";
        document.querySelector('.leaveworkList').style.display = "none";
    }   
//편안한 F_hiphopList
	function F_Relax(){
		document.querySelector('.hiphopList').style.display = "none"; 
        document.querySelector('.RelaxList').style.display = "block";	//화면에 표시
        document.querySelector('.PopArtistList').style.display = "none";
        document.querySelector('.aloneloveList').style.display = "none";
        document.querySelector('.AniOSTList').style.display = "none";
        document.querySelector('.ExerciseList').style.display = "none";
        document.querySelector('.leaveworkList').style.display = "none";
    }
//애니
	function F_AniOST(){
		document.querySelector('.hiphopList').style.display = "none"; 
        document.querySelector('.AniOSTList').style.display = "block";	//화면에 표시
        document.querySelector('.PopArtistList').style.display = "none";
        document.querySelector('.RelaxList').style.display = "none";
        document.querySelector('.aloneloveList').style.display = "none";
        document.querySelector('.ExerciseList').style.display = "none";
        document.querySelector('.leaveworkList').style.display = "none";
    }
//운동
	function F_Exercise(){
		document.querySelector('.hiphopList').style.display = "none"; 
        document.querySelector('.ExerciseList').style.display = "block";	//화면에 표시
        document.querySelector('.PopArtistList').style.display = "none";
        document.querySelector('.RelaxList').style.display = "none";
        document.querySelector('.AniOSTList').style.display = "none";
        document.querySelector('.aloneloveList').style.display = "none";
        document.querySelector('.leaveworkList').style.display = "none";
    }
	
//퇴근
	function F_Leavework(){
		document.querySelector('.hiphopList').style.display = "none"; 
        document.querySelector('.leaveworkList').style.display = "block";	//화면에 표시
        document.querySelector('.PopArtistList').style.display = "none";
        document.querySelector('.RelaxList').style.display = "none";
        document.querySelector('.AniOSTList').style.display = "none";
        document.querySelector('.ExerciseList').style.display = "none";
        document.querySelector('.aloneloveList').style.display = "none";
    }
</script>

</body>
</html>