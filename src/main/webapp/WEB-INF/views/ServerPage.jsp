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

<title>Insert title here</title>
</head>
<body>
<div class="container"> 
	<input type="hidden" name="userId" id="userId" value="A">
	<input type="hidden" name="roomCode" id="roomCode">
	<input type="hidden" name="channelCode" id="channelCode">
	<input type="hidden" name="username" id="username" value="에이">
	<jsp:include page="NY/ServerHeader.jsp"></jsp:include>

	<div class="ServerLbar">
		<jsp:include page="NY/ServerLbar.jsp"></jsp:include>
	</div>
        	

		

      <div class="Midbar">
      	<jsp:include page="NY/MusicRecommand.jsp"></jsp:include>
	    <jsp:include page="NY/MusicSearch.jsp"></jsp:include>
	      	<!--.ChatPage 여기에 채팅 jsp 넣으면 된담 -->
	      	<div class="ChatPage">
	      		<!-- 뮤직페이지 열고 닫는 아이콘 -->
	      		<img src="ny/img/icon/gogoIcon.png" class="pageIcon" id="OpenMusic" onclick="FMusicPage()">
	      		<img src="ny/img/icon/closeMusicIcon.png" class="pageIcon" id="CloseMusic" onclick="FC_MusicPage()">
	      		<div>
	      		
	      		</div>
	      		<jsp:include page="ch/chat/chat.jsp"></jsp:include>
	      		<div class="inputFix">	<!-- css아직 없음 -->
	      			<div class="ChatInput">
	        		<input id="chatRealInput" type="text" placeholder="채팅" onkeydown="send(event)">
	        		<img src="ny/img/icon/chatIcon/ghostIcon.png">
	        		<img src="ny/img/icon/chatIcon/smilIecon.png">
	       		</div>
	       			<div class="ChatSubmit">
	       				<input id="chatRealsubmit" type="button" value="보내기" onclick="sendChatSc()">
	       			</div>	
	      		</div>
	      	</div>
	      	
	
		
	</div>
</div>
<script type="text/javascript" src="/ny/js/ServerPage.js"></script>
<script type="text/javascript" src="/ny/js/MusicRecommand.js"></script>
<script type="text/javascript" src="/ch/js/channel/channel.js"></script>
<script type="text/javascript" src="/ch/js/room/room.js"></script>
<script type="text/javascript" src="/ch/js/room/roomdel.js"></script>
<script type="text/javascript" src="/ch/js/stomp/stompChat.js"></script>
<script type="text/javascript">

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









//채팅 옆으로 밀고 뮤직 페이지 등장
function FMusicPage(){
    document.querySelector('.MusicPage').style.display = "block";   //뮤직 페이지 나타남
    document.querySelector('#CloseMusic').style.display = "block";	//닫히는 아이콘 나타남
    document.querySelector('#OpenMusic').style.display = "none";	//열리는 아이콘 없어짐
    document.querySelector('.ChatPage').style.width = "50%";    	//채팅방 사이즈 줄여짐
    document.querySelector('.ChatInput').style.width = "400px";
    document.querySelector('#chatRealsubmit').style.width = "30px";
}
//채팅 옆으로 밀고 뮤직 페이지 등장
function FC_MusicPage(){
	//document.querySelector('.CloseMusic').style.display = "none"; 
    document.querySelector('.MusicPage').style.display = "none";   
    document.querySelector('#CloseMusic').style.display = "none";	//닫히는 아이콘 나타남
    document.querySelector('#OpenMusic').style.display = "block";	//열리는 아이콘 없어짐
    document.querySelector('.ChatPage').style.width = "100%";    
}



//뮤직페이지 없애고 음악검색 페이지 생김
function F_ToSearch(){
    document.querySelector('.MusicSearch').style.display = "block";	// 검색페이지 열림
    document.querySelector('.MusicPage').style.display = "none";    // 음악페이지 닫힘
    document.querySelector('#ToSearch').style.display = "none";	//검색 아이콘 없어짐
    document.querySelector('#ToMusic').style.display = "none";	//뮤직 아이콘 나타남

}
function F_ToMusicList(){

    document.querySelector('.MusicPage ').style.display = "block";	//음악페이지 열림
    document.querySelector('.MusicSearch').style.display = "none";   //검색페이지 사라짐
    document.querySelector('#ToMusic').style.display = "none";	//뮤직 아이콘 없어짐
    document.querySelector('#ToSearch').style.display = "none";	//검색 아이콘 나타남

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