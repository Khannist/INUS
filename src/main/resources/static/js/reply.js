/**
 * 
 */
window.onload = function() {
	getTest();
	commentList();
	CommentDelete();
}
 
// 댓글 등록 ajax
function getTest() {
	$("#Comment_regist").click(function(){
		var msg = {
			inus_boardNum:document.getElementById("inus_boardNum").innerText, // 게시판 번호를 가져온다. 
			inus_CmWriter: document.getElementById("inus_userName").innerText, // 로그인 기능이 없으므로 게시글 작성자 컬럼명을 가져와 사용
			inus_CmContent:$("#inus_CmContent").val() // 작성하는 내용을 벨류값으로 가져온다.
		}
		
		commonajax("/comment/InsertComment", msg, "POST", function(result){
			getList(result);
		});
			
		
		$("#inus_CmContent").val("");
	});
}

// 댓글 목록 ajax
	function commentList() {
		var msg = {
			inus_boardNum:document.getElementById("inus_boardNum").innerText, // 게시판 번호를 가져온다. 
			inus_CmWriter: document.getElementById("inus_userName").innerText, // 로그인 기능이 없으므로 게시글 작성자 컬럼명을 가져와 사용
			inus_CmContent:$("#inus_CmContent").val() // 작성하는 내용을 벨류값으로 가져온다.
		}
		
		commonajax("/comment/CommentList", msg, "POST", function(result){
			getList(result);
		});
	}
	function getList(data) {
		console.log("data = "+ data);
		console.log(JSON.parse(data));
		data = JSON.parse(data);
		console.log("list = " + data.list[0]);
		if(data.list.length > 0) {
			var list = data.list;
			
			var comment_html = "<div>";
			
			$('#count').html(data.list.length);
			for(i = 0; i < list.length; i++){
				var content = list[i].inus_CmContent;
				var writer = list[i].inus_CmWriter;
				
				comment_html += "<div><span id='inus_CmWriter'><strong>" + writer + "</strong></span><br/>";
				comment_html += "<span id='inus_CmContent'>" + content + "</span><br>";
				
				var con = document.getElementById("inus_userName").innerText;
				
				
				console.log(writer);
				console.log(con);
				console.log(writer === con);
				if(writer === con){
					comment_html += '<input type="button" id="CommentDeleteBtn" value="댓글삭제">';
					comment_html += '<hr></div>';
					CommentDelete();
					
				}
				else{
					comment_html += "</div><hr>";
				}
			}
			$(".comment_Box").html(comment_html);
		}
		else{
			var comment_html = "<div>등록된 댓글이 없습니다.</div>";
			$(".comment_Box").html(comment_html);
		}
	}

// 댓글 삭제
function CommentDelete(){
		$("#CommentDeleteBtn").click(function(){
		var num = $("#inus_commentNum").val(); 
		
			$.ajax({
				type:"delete",
				url:"/comment/CommentDelete/${CommentVo.inus_boardNum}/"+num,
				dataType:"text",
				success:function(result){
					if(result == "success"){
						alert("삭제가 완료되었습니다.");
						var count = $("#count").text();
						$("#count").text(parseInt(count)-1);
						getList();
						}
					},
				error:function(result){
					alert("에러");
				}
					
				
			});
		
		});
		
	}





// 공통 함수 ajax
function commonajax(url, parameter, type, calbak, contentType){
   $.ajax({
      url: url,
      data: parameter,
      type: type,
      contentType :'application/x-www-form-urlencoded; charset=UTF-8',
      success: function (data) {
         res = JSON.parse(data);
         calbak(data);
      },
      error : function(err){
         console.log('error');
         calbak(err);
      }
   });
}