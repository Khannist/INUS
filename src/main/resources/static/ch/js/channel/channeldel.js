/**
 * 
 */
  function delChannel(code) {
	var msg = {
		channelCode : code,
		userId : $("#userId").val()
	};

	commonAjax('/delChan', msg , 'post', function(result){
	createChatingChannel(result);
	});		
	F_closeReplace();
}