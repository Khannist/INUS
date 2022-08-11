/**
 * 
 */
 var ws;
var numTrigger;

function getRoom(res){
	var msg = { 
		userId : $('#userId').val(),
		channelCode : res.channelCode
	};
	if($("#roomCode").val() != null || $("#roomCode").val() != "") {
		"roomCode = " + $("#roomCode").val("");
	}
	if(res.roomNumber == 1) {
		numTrigger = 1;
	}
	commonAjax('/getRoom', msg , 'post', function(result){
		createChatingRoom(result);
	});
}

function createRoom(){
	document.getElementById("inputInviteSpace").style.display = "none";
	var con = document.getElementById("inputNameSpace");
	con.style.display = (con.style.display != 'none') ? "none" : "inline-block";
}


function createRoomName() {
	var roomName;
	if($('input#roomName').val() == null || $('input#roomName').val() == ""){
		$("input#roomName").attr("placeholder","이름을 입력해주세요!");
		$('input#roomName').focus();
	}else {
		if($("#roomList").children().length == 0) {
			roomName = "main";
		} else {
			roomName = $('input#roomName').val();
		}
		var msg = {
			channelCode : $('#channelCode').val(),	
			roomName : roomName ,
			userId : $('#userId').val()	
			};
		commonAjax('/createRoom', msg, 'post', function(result){
			createChatingRoom(result);
		});
		document.getElementById("inputNameSpace").style.display = "none";
		document.querySelector(".ServerReplace").style.display = "none";
		numTrigger = 2;
		$("input#roomName").val("");
		$("input#roomName").attr("placeholder","채팅방 이름 입력");
		F_closeReplace();
	}

}


function goRoom(code, id, room){
	$("#roomCode").val(room);
	$("#chating").empty();
	var msg = {
		channelCode : code,
		userId : id,
		roomCode : room
	}
	commonAjax('/moveChating', msg , 'post', function(result){
		getChat(result);
	});
	
	$("#roomList li").css({
		"background":"none",
		"height" : "45px"
		
		});
	$("#" + room).css({
		"background":"#5c5c5c",
		"height" : "45px"
		});
	
	
	disconnect();
	connect();
	$("#chatInput").focus();
}

function getChat(res) {
	var msg = { 
		name : $("#name").val(),
		userId : $('#userId').val(),
		channelCode : res.channelCode,
		roomCode : res.roomCode
			};
	commonAjax('/getChat', msg , 'post', function(result){
		createChat(result);
	});
	$("#chatRealInput").empty();
}

function createChat(res) {
	if(res != null){
		//console.log("res = " + JSON.stringify(res));
		var tag = "";
		if(res.list) {
			tag += "<ul>";
			if(res.list.length >= 0) {
				res.list.forEach(function(d, idx){
					if(d.userId == $("#userId").val()){
						tag +=  "<li class='right'>" +  
								"<p class='message'>" + d.chatData + "</p>" +
								"</li>";
					}else {
						tag += "<li class='left'>" +
								"<div class='sender' style='color:white;'>" + d.username + "</div>" +
								"<p class='message'>" + d.chatData + "</p>" +
								"</li>";
					}
				});			
			}else {
				if(res.list.userId == $("#userId").val()){
					tag += "<li class='right'>" +  
							"<p class='message'>" + res.list.chatData + "</p>" +
							"</li>";
				}else {
					tag += "<li class='left'>" +
								"<div class='sender' style='color:white;'>" + res.list.username + "</div>" +
								"<p class='message'>" + res.list.chatData + "</p>" +
								"</li>";
				}
			}		
			tag += "</ul>";
		}
		
		if($("ul#channelSpace").children().length == 1) {
			disconnect();
			connect();
		}
		$("#chating").append(tag);
         $('#chating').scrollTop($('#chating').prop('scrollHeight'));
	}
}

function createChatingRoom(res){
	
	if(res != null){
		var tag = "";
		if(res.list){
			if(res.list.length >= 1) {
				$("#roomCode").val(res.list[0].roomCode);
				$("#ChatName").innerText = (res.list[0].channelName);
				res.list.forEach(function(d, idx){
					var rn = d.roomName;
					tag += "<li id=" + d.roomCode + ">"+
								"<span onclick='goRoom(\""+d.channelCode+"\",\""+d.userId+"\",\""+d.roomCode+"\")'" + 
					"id='connect' name='connect'>" +
								"<img src='https://source.unsplash.com/random'>"+
								"<p class='go' value='"+d.roomCode+"'>"+
									rn +
								"</p>"+
								"</span>"+
								"<span class='roomdel' name='roomdel' value='"+d.roomCode+"' onclick='delRoom(\""+d.roomCode+"\",\""+d.roomName+"\")'>X</span>" + 
							"</li>";
				});
			}			
		}
		$("#roomList").empty().append(tag);
		if(numTrigger == 1) {
			goRoom($("#channelCode").val(), $("#userId").val(), $("#roomCode").val());
			numTrigger = 0;
		}else if(numTrigger == 2) {
			goRoom($("#channelCode").val(), $("#userId").val(), res.list[res.list.length-1].roomCode);
			numTrigger = 0;
		}
		
	}
}

function checkRoom(res) {
	if(res.list) {
		var num = res.list.length - 1;
		var msg = {
			userId : res.list[num].userId,
			channelCode : res.list[num].channelCode
		}
		$.ajax({
			url: "/checkRoom",
			data: msg,
			type: "POST",
			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			success: function (res) {
				res = JSON.parse(res);
				if(res.msg == "yes") {
					createRoomName();
				}
				
			}
		});
			
	}
}


