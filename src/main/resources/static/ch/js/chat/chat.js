var ws;

function getChat(res) {
	console.log("getChat.res = " + JSON.stringify(res));
	var msg = { 
		name : $("#name").val(),
		Id : $('#Id').val(),
		channelCode : res.channelCode,
		roomCode : res.roomCode
			};
	commonAjax('/getChat', msg , 'post', function(result){
		createChat(result);
	});
}

function createChat(res) {
	if(res != null){
		//console.log("res = " + JSON.stringify(res));
		console.log("res.list = " + res.list);
		console.log("res[0] = " + res[0]);
		console.log("res.list[0].Id = " + res.list[0].Id);
		console.log("res.length = " + res.list[0].roomCode);
		var tag = "";
		if(res.list.length >= 1) {
			$("#roomCode").val(res.list[0].roomCode);
		}
		res.list.forEach(function(d, idx){
			console.log("d.roomCode = " + d.roomCode);
			if(d.Id == $("#Id")){
				tag +=  "<p class='me'>나 :" + d.chatData + "</p>";
			}else {
				tag += "<p class='others'>" + d.name + " :" + d.chatData + "</p>";
			}
		});
		$("#ChatInput").empty().append(tag);
	}
}





function wsOpen(){
	//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
	ws = new WebSocket("ws://" + location.host + "/chating/"+$("#roomCode").val());
	wsEvt();
}
	
function wsEvt() {
	ws.onopen = function(data){
		//소켓이 열리면 동작
	}
	
	ws.onmessage = function(data) {
		//메시지를 받으면 동작
		var msg = data.data;
		if(msg != null && msg.trim() != ''){
			var d = JSON.parse(msg);
			if(d.type == "getId"){
				var si = d.sessionId != null ? d.sessionId : "";
				if(si != ''){
					$("#sessionId").val(si); 
				}
			}else if(d.type == "message"){
				if(d.sessionId == $("#sessionId").val()){
					$("#chating").append("<p class='me'>나 :" + d.msg + "</p>");	
				}else{
					$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
				}
					
			}else{
				console.warn("unknown type!")
			}
		}
	}

	document.addEventListener("keypress", function(e){
		if(e.keyCode == 13){ //enter press
			send();
		}
	});
}


function send() {
	document.addEventListener("keypress", function(e){
		if(e.keyCode == 13){ //enter press
			console.log("센드 보낸다!");
			var option ={
				type: "message",
				roomNumber: $("#roomNumber").val(),
				sessionId : $("#sessionId").val(),
				Id : $("#Id").val(),
				roomCode : $("#roomCode").val(),
				channelCode : $("#channelCode").val(),
				msg : $("#chatting").val()
			}
			ws.send(JSON.stringify(option));
			$('#chatting').val("");
		}
	});
	
}