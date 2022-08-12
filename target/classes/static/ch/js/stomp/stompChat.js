stompClient = null;


function connect() {
	var socket = new SockJS('/ws');
	
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame){

		stompClient.subscribe('/topic/' + $("#channelCode").val() + '/' + $("#roomCode").val(), function(res) {
			console.log(JSON.parse(res.body));
			createChat(JSON.parse(res.body));
		});
	});
	
}
function sendChatSc() {
	if($("input#chatRealInput").val() == null || $("input#chatRealInput").val() == "") {
		}else {
			var msg = {
				'username' : $("#username").val(),
				'userId' : $("#userId").val(),
				'roomCode' : $("#roomCode").val(),
				'channelCode' : $("#channelCode").val(),
				'chatData' : $("input#chatRealInput").val()
			};
			console.log("sendChatSc.msg = " + JSON.stringify(msg));
			stompClient.send("/app/user", {}, JSON.stringify(msg));
			$("#chatRealInput").val("");
			
		}
		$("#chatRealInput").focus();
}
function send(e) {
	if(e.keyCode == 13){
		sendChatSc();
	}
}



function disconnect() {
	if(stompClient !== null) {
		stompClient.disconnect();
	}
}







