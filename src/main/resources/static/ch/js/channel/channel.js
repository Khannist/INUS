/**
 * 
 */
 var ws;
window.onload = function() {
	getChannel();	
	getRoom();
}

function getChannel(){
	var msg = { userId : $('#userId').val()	};
	commonAjax('/getChannel', msg , 'post', function(result){
		createChatingChannel(result);
	});
}

function createServer(){
	$("#addChannel").click(function(){		
		var con = document.getElementById("channelNameInput");
	    con.style.display = (con.style.display != 'none') ? "none" : "inline-block";
	});
}
		
function channelCreateName(){
	var msg = {
		channelName : $('input#channelName').val(),
		userId : $('#userId').val()
	};
	commonAjax('/createChannel', msg, 'post', function(result){
		createChatingChannel(result);
	});
	var con = document.getElementById("channelNameInput");
	con.style.display = "none";
	$("input#channelName").val("");
}
		


function goChannel(code, name, id){
	
	$("#roomList").empty();
	$("#ChatName").empty().text(name);
	var msg = {
		channelCode : code,
		channelName : name,
		userId : id,
		roomNumber : "1"
	}
	
	$("#channelCode").val(code);
	
	commonAjax('/moveRoom', msg, 'post', function(result){
		getRoom(result);
	});
	$(".ServerReplace ul").children('li:eq(2)').attr("onclick","delChannel(\""+ code +"\")");
}

function createChatingChannel(res){
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
			checkRoom(res);
			
			$("#channelSpace").empty().append(tag);			
		}
	}
}

function commonAjax(url, parameter, type, calbak, contentType){
	$.ajax({
		url: url,
		data: parameter,
		type: type,
		contentType :'application/x-www-form-urlencoded; charset=UTF-8',
		success: function (res) {
			res = JSON.parse(res);
			calbak(res);
		},
		error : function(err){
			console.log('error');
			calbak(err);
		}
	});
}