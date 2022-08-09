/**
 * 
 */
 
//서버 수정 페이지 나타남
function F_openrReplace(){
    document.querySelector('.ServerReplace').style.display = "block";   //서버 수정 페이지 나타남
    document.querySelector('#chatIcon_2').style.display = "block";	//닫히는 아이콘 나타남
    document.querySelector('#chatIcon').style.display = "none";	//열리는 아이콘 없어짐

}
//서버 수정 페이지 없어짐
function F_closeReplace(){
    document.querySelector('.ServerReplace').style.display = "none";   //서버 수정 페이지 없어짐
    document.querySelector('#chatIcon_2').style.display = "none";		   //열리는 아이콘 나타남
    document.querySelector('#chatIcon').style.display = "block";	   //닫히는 아이콘 없어짐  
}
 
 
 
//채팅 옆으로 밀고 뮤직 페이지 등장
function FMusicPage(){
    document.querySelector('.MusicPage').style.display = "block";   //뮤직 페이지 나타남
    document.querySelector('#CloseMusic').style.display = "block";	//닫히는 아이콘 나타남
    document.querySelector('#OpenMusic').style.display = "none";	//열리는 아이콘 없어짐
    document.querySelector('.ChatPage').style.width = "50%";    	//채팅방 사이즈 줄여짐
    document.querySelector('.ChatInput').style.width = "100px";
    document.querySelector('#chatRealInput').style.width = "100px";
    document.querySelector('#chatRealsubmit').style.width = "60px";
}
//채팅 옆으로 밀고 뮤직 페이지 등장
function FC_MusicPage(){
	//document.querySelector('.CloseMusic').style.display = "none"; 
    document.querySelector('.MusicPage').style.display = "none";   
    document.querySelector('#CloseMusic').style.display = "none";	//닫히는 아이콘 나타남
    document.querySelector('#OpenMusic').style.display = "block";	//열리는 아이콘 없어짐
    document.querySelector('.ChatPage').style.width = "100%";    
}




/*
 var linkFront = "https://www.youtube.com/embed/videoseries?list=";
 var linkBack= "&feature=share";
 var linka = "";
 $("#abc").empty().attr("src",linkFront + linka +linkBack);*/