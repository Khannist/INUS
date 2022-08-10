/**
 * 
 */
 function inviteUser(data) {
	document.getElementById("inputNameSpace").style.display = "none";
	var con = document.getElementById("inputInviteSpace");
	con.style.display = (con.style.display != 'none') ? "none" : "inline-block";
	
	$("#inputInviteSpace").children('input[type="button"]').attr("onclick","inviteSend(\""+ data +"\")");
};

function inviteSend(data) {
	var FUserId = $("#FUserId").val(); 
	if(FUserId == null || FUserId == "") {
		$("#FUserId").focus();
	}else {
		var param = {
			channelCode : data,
			userId : $("#FUserId").val()
		};
		$.ajax({
		url: "/InviteUser",
		data: param,
		type: "POST",
		contentType :'application/x-www-form-urlencoded; charset=UTF-8',
		success: function (res) {
			res = JSON.parse(res);
			console.log("초대 성공");
			
			console.log("현재 체널의 유저리스트");
			res.list.forEach(function(d){
				console.log(d.userId);
			});
		},
		error : function(err){
			console.log('error');
		}
	});
		$("#FUserId").empty();
		inviteUser();
	}
}