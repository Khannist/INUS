$(document).ready(function(){
	
$(".next_page").click(function(){
	const username = $("input[name=username]").val().replaceAll(" ", "");
	if(!username) {
		return false;
	}
	
	$.ajax({
		url: "/api/find/overlapCheck",
		type: "GET",
		async: false,
		data: {
			username : username,
		}
	})
	.done(function(result){
			submit = true;
			location.href= "/find/password/auth?username=" + result;
	})
	.fail(function(error){
		alert(error.responseText);
	})
})
	
})
