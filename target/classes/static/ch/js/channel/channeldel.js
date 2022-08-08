/**
 * 
 */
  function delChannel(code) {
	var msg = {
		channelCode : code,
		userId : $("#userId").val()
	};
	
	console.log("code = " + JSON.stringify(msg));

	commonAjax('/delChan', msg , 'post', function(result){
	createChatingChannel(result);
	});		

}