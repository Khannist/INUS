$(document).ready(function(){
	
 
// 유저 정보 변경하기
function infoModify(data) {
	$.ajax({
		url: "/api/user/info",
		type: "PATCH",
		data: data
	})
	.then(function(result){
		swal(result);
		$("input").val("");
		
	})
	.fail(function(error){
		alert(error.responseText);
	})
} 
 
	
 
 
$(".pwd_modify").click(function() {
	const prevPassword = $(".present_password").val().replaceAll(" ", "");
	const newPassword = $(".new_password").val().replaceAll(" ", "");
	const newPasswordCheck = $(".new_password_check").val().replaceAll(" ", "");
	
	if(!prevPassword || !newPassword) {
		return;
	}
	
	if(newPassword != newPasswordCheck) {
		swal('변경하실 비밀번호를 확인해 주세요');
		return;
	}
	
	if (!passwordCheck(newPassword)) {
		swal('최소 하나의 문자 및 숫자를 포함한 8~16자이여야 합니다');
		return;
	}
	
	swal({
		text: '비밀번호를 변경하시겠습니까?',
		buttons: ['취소', '변경하기']
	})
	.then(function(value){
		if(value) {
			const data = {
				value: newPassword,
				valueType: "password",
				prevPassword : prevPassword
			};
		
			infoModify(data);
		}
	})
})
 
 
 
$(".nickname_modify").click(function() {
	const nickname = $(".nickname").val();
 
	if (!nickname) {
		return;
	}
 
	if (!nicknameCheck(nickname)) {
		swal('숫자 또는 특수문자를 제외한 2자이상 입력해주세요');
		return;
	}
	
	
	const data = {
		value: nickname,
		valueType: "nickname"
	};
	
	swal('닉네임을 ' + nickname + '으로 변경하시겠습니까?', {
				buttons: ['취소', '변경하기'],
			})
			.then(function(value){
				if (value) {
					infoModify(data);
					$(".user_nickname").text(nickname);
				}
		})
					
	
}); 
 
 
 
 
 
 
// 인증번호 전송
$(".auth_num_send").click(function(){
	const phone = $(".phone").val();
	if (!phoneCheck(phone)) {
		swal('휴대폰번호를 정확히 입력해주세요');
		return;
	}
	if(!timer.status().isStart) {
		swal(timer.status().restartTime +' 초 후에 전송가능합니다');
		return;
	}
	
	$.ajax({
		url: "/api/user/sendAuthNum",
		type: "POST",
		data: {phone : phone}
	})
	.then(function(result){
		swal(result);
		$(".auth_num_box").fadeIn(100);
		timer.start();
	})
	.fail(function(result){
		alert("에러")	;
	})
})
 
 
$(".phone_auth_btn").click(function(){
	 const authNum = $(".phone_auth_num").val().replaceAll(" ", "");
	 if(!authNum) {
		return;
	}
	
	const data = {
		authNum : authNum
	}	
	
	$.ajax({
		url: "/api/user/authNumCheck",
		type: "POST",
		data: data 
	})
	.then(function(){
		swal({
			text: "전화번호를 변경하시겠습니까?",
			buttons: ['취소', '변경']
		})
		.then(function(value){
			if(value) {
				const data = {
					value: $(".phone").val(),
					valueType: "phone"
				};
				infoModify(data);
				$(".auth_num_box").fadeOut(100);
			}
		})
	})
	.fail(function(result){
		swal(result.responseText);
	})
})
 
 
 
 
 
})
