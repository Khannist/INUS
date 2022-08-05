/**
 * 
 */
 var ws;
window.onload = function() {
	getChannel();	
	getRoom();
}

function getChannel(){
	console.log(1);
	var msg = { userId : $('#userId').val()	};
	commonAjax('/getChannel', msg , 'post', function(result){
		createChatingChannel(result);
	});
	console.log(2);
}

function createServer(){
	console.log(3);
	$("#addChannel").click(function(){		
		var con = document.getElementById("channelNameInput");
	    con.style.display = (con.style.display != 'none') ? "none" : "inline-block";
	});
	console.log(4);
}
		
function channelCreateName(){
	console.log(5);
	var msg = {
		channelName : $('input#channelName').val(),
		userId : $('#userId').val()
	};
	console.log("userId = " + JSON.stringify(msg));
	commonAjax('/createChannel', msg, 'post', function(result){
		createChatingChannel(result);
	});
	var con = document.getElementById("channelNameInput");
	con.style.display = "none";
	$("input#channelName").val("");
	console.log(6);
}
		


function goChannel(code, name, id){
	console.log(7);
	
	$("#roomList").empty();
	$("#ChatName").empty().text(name);
	var msg = {
		channelCode : code,
		channelName : name,
		userId : id,
		roomNumber : "1"
	}
	console.log("고채널 = " + JSON.stringify(msg));
	//location.href="/moveRoom?channelName="+name+"&"+"channelCode="+code+"&userId="+id;
	
	$("#channelCode").val(code);
	
	commonAjax('/moveRoom', msg, 'post', function(result){
		getRoom(result);
	});
	console.log(8);
}

function createChatingChannel(res){
	console.log(9);
	if(res != null){
		var tag = "";
		if(res.list) {
			res.list.forEach(function(d, idx){
				console.log("채널 코드 생성");
				$("#channelCode").val(d.channelCode);
				var cn = d.channelName;
				tag += "<li onclick='goChannel(\""+d.channelCode+"\", \""+cn+"\",\""+d.userId+"\",\""+d.channelList+"\")' "+
				" oncontextmenu='channelEvent(event)' name='"+ d.channelList +"'>"+
							"<p type='hidden' name='hiddenChannelCode' value='"+d.channelCode+"'>"+
								"<img class='serverImg' src='https://source.unsplash.com/random'>"+
							"</p>" +
						"</li>";
			});
			console.log("룸코드 생성 검증");
			checkRoom(res);
			
			$("#channelSpace").empty().append(tag);			
		}
	}
	console.log(10);
}

function commonAjax(url, parameter, type, calbak, contentType){
	console.log(11);
	$.ajax({
		url: url,
		data: parameter,
		type: type,
		contentType :'application/x-www-form-urlencoded; charset=UTF-8',
		success: function (res) {
			console.log(12);
			res = JSON.parse(res);
			calbak(res);
		},
		error : function(err){
			console.log('error');
			calbak(err);
		}
	});
}