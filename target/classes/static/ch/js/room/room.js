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
	var con = document.getElementById("inputNameSpace");
	con.style.display = (con.style.display != 'none') ? "none" : "inline-block";
}


function createRoomName() {
	var roomName;
	if($('input#roomName').val() == null || $('input#roomName').val() == "") roomName = "main";
	else roomName = $('input#roomName').val(); 
	
	var msg = {
			channelCode : $('#channelCode').val(),	
			roomName : roomName ,
			userId : $('#userId').val()	
			};
		commonAjax('/createRoom', msg, 'post', function(result){
			createChatingRoom(result);
		});
	document.getElementById("inputNameSpace").style.display = "none";;
	document.querySelector(".ServerReplace").style.display = "none";
	$("input#roomName").val("");
	F_closeReplace();
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
			if(res.list.length >= 0) {
				res.list.forEach(function(d, idx){
					if(d.userId == $("#userId").val()){
						tag +=  "<p class='me'>나 :" + d.chatData + "</p>";
					}else {
						tag += "<p class='others'>" + d.username + " :" + d.chatData + "</p>";
					}
				});			
			}else {
				var d = res.list;
				if(d.userId == $("#userId").val()){
					tag +=  "<p class='me'>나 :" + d.chatData + "</p>";
				}else {
					tag += "<p class='others'>" + d.username + " :" + d.chatData + "</p>";
				}
			}		
		}
		
		if($("ul#channelSpace").children().length == 1) {
			disconnect();
			connect();
		}
		$("#chating").append(tag);
		let chat = document.querySelector('#chating');
        chat.scrollTop = chat.scrollHeight;
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


