/**
 * 
 */
 
 
 
 
 //
function F_AccountSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#AccountSet').attr("style","display:block");
    console.log(88);
}


function F_ProfileSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#ProfileSet').attr("style","display:block");
}

//SecuritySet
function F_SecuritySet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#SecuritySet').attr("style","display:block");
}

//
function F_ConnectSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#ConnectSet').attr("style","display:block");
}


function F_FreindSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#FreindSet').attr("style","display:block");
}

//여기까지 사용자 설정


//서버설정
function F_ServerBoostSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#ServerBoostSet').attr("style","display:block");
}


function F_MidServerSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#MidServerSet').attr("style","display:block");
}


function F_GiftSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#GiftSet').attr("style","display:block");
}


//여기까지 서버 설정


//앱설정
function F_DisplaySet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#DisplaySet').attr("style","display:block");
}


function F_AccessibilitySet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#AccessibilitySet').attr("style","display:block");
}


function F_VideoSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#VideoSet').attr("style","display:block");
}

function F_TextPicSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#TextPicSet').attr("style","display:block");
}


function F_NoticeSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#NoticeSet').attr("style","display:block");
}


function F_ShortcutSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#ShortcutSet').attr("style","display:block");
}

//여기까지 앱설정


//음악설정
function F_SoundSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#SoundSet').attr("style","display:block");
}


function F_PlayListSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#PlayListSet').attr("style","display:block");
}


function F_RecommandVideoSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#RecommandVideoSet').attr("style","display:block");
}

function F_AutoplaySet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#AutoplaySet').attr("style","display:block");
}

//여기까지 음악설정


//AddSet


function F_NewSkillSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#NewSkillSet').attr("style","display:block");
}

function F_LogOutSet(){
	$(".SetMidbar").children('div').attr("style","display:none");
	$(".SetMidbar").children('#LogOutSet').attr("style","display:block");
}




<<<<<<< HEAD



=======
//여기까지 Lbar누르면 페이지 이동 끝남


function F_UserProfile(){
	document.querySelector('#UserProfile').style.display = "block";   
    document.querySelector('#ServerProfile').style.display = "none";
}

function F_ServerProfile(){
	document.querySelector('#UserProfile').style.display = "none";   
    document.querySelector('#ServerProfile').style.display = "block";
    document.querySelector('#ProfileSet_btn01').style.color = "#B9BBBE";
}
>>>>>>> 87d17a2da6400c3314d669df4645f5c9237215a9






//로그아웃

$(function(){
	
	// 	이미지 클릭시 해당 이미지 모달
	$("#LogOutSet").click(function(){
		$("#Logoutdiv").show();
		
	
	//.modal안에 button을 클릭하면 .modal닫기
	$("#LogOutFake").click(function(){
		$("#Logoutdiv").hide();
	});
	
	//.modal밖에 클릭시 닫힘
	$("#Logoutdiv").click(function (e) {
    if (e.target.className != "#Logoutdiv") {
      return false;
    } else {
      $("#Logoutdiv").hide();
    }
  });
});

})