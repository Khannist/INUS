/**
 * 
 */
 window.onload = function() {
	var mainId = $("#mainId").val();
	console.log("mainId " + mainId);
	viewFlist(mainId);
};

function createViewfList(obj) {
	if(obj != null) {
		console.log("objlistsize = " + obj.list.size);
		console.log(obj);
		for(var a = 0; a < obj.list.length; a++) {
			$("#friendList").append("<p>" + obj.list[a] + "</p><br>");			
		}
	}
}
 

 
function viewFlist(parameters) {
	 $.ajax({
		url: "/ajax.do",
		data: {mainId: parameters},
		dataType: "json",
		contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
		success: function(data) {
			//data = JSON.parse(data);
			console.log(data.list);
			console.log(Object.keys(data).list);
			console.log(data[0]);
			console.log(Object.keys(data).length);
			createViewfList(data);
		}
		
	});	
}