/**
 * 
 */
 $(document).mouseup(function (e) {
	// 팝업 아이디
	var container = $("#popup");
	if (!container.is(e.target) && container.has(e.target).length === 0){
		container.css("display","none");
	}	
});
