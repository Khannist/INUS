/**
 * 
 */
  $(document).mouseup(function (e) {
   var con1 = $("#channelNameInput");
   var con2 = $("#inputNameSpace");
   var con3 = $("#inputInviteSpace");

	console.log($(e.target).closest(con1).length);

   if (!$(e.target).closest(con1).length){
      con1.css({"display":"none"});
   }

   if (!$(e.target).closest(con2).length){
      con2.css({"display":"none"});
   }

   if (!$(e.target).closest(con3).length){
      con3.css({"display":"none"});
   }
});