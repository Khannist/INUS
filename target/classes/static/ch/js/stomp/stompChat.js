stompClient = null;


function connect() {
	var socket = new SockJS('/ws');
	
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame){
		console.log("Connected : " + frame);

		stompClient.subscribe('/topic/' + $("#channelCode").val() + '/' + $("#roomCode").val(), function(res) {
			console.log("출력 테스트중");
			console.log("res = " + res);
			console.log("res code = " + res.channelCode);
			console.log(JSON.parse(res.body));
			console.log("채널 출력 테스트중");
			console.log(JSON.parse(res.body).list.channelCode);
			createChat(JSON.parse(res.body));
		});
	});
	
}
function sendChatSc() {
	if($("input#chatRealInput").val() == null || $("input#chatRealInput").val() == "") {
			console.log("빈값");
		}else {
			console.log("sending");
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

	console.log("e = " + JSON.stringify(e));
	if(e.keyCode == 13){
		sendChatSc();
	}
}



function disconnect() {
	if(stompClient !== null) {
		stompClient.disconnect();
	}
}







