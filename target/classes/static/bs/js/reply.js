/**
 * 
 */
window.onload = function() {
	getTest();
	commentList();
}
 
// 댓글 등록 ajax
function getTest() {
	$("#Comment_regist").click(function(){
		var msg = {
			inus_boardNum:document.getElementById("inus_boardNum").value, // 게시판 번호를 가져온다. 
			inus_CmWriter: document.getElementById("inus_userName").value, // 로그인 기능이 없으므로 게시글 작성자 컬럼명을 가져와 사용
			inus_CmContent:$("#inus_CmContent").val() // 작성하는 내용을 벨류값으로 가져온다.
			
		}
		
		commonajax("/comment/InsertComment", msg, "get", function(result){
			getList(result);
		});
			
		
		$("#inus_CmContent").val("");
	});
}

// 댓글 목록 ajax
	function commentList() {
		var msg = {
			inus_boardNum:document.getElementById("inus_boardNum").value, // 게시판 번호를 가져온다. 
			inus_CmWriter: document.getElementById("inus_userName").value, // 로그인 기능이 없으므로 게시글 작성자 컬럼명을 가져와 사용
			inus_CmContent:$("#inus_CmContent").val() // 작성하는 내용을 벨류값으로 가져온다.
		}
		
		commonajax("/comment/CommentList", msg, "get", function(result){
			getList(result);
		});
	}
	function getList(data) {
		console.log("data = "+ data);
		console.log("list = " + data.list);
		if(data.list.length > 0) {
			var list = data.list;
			
			var comment_html = "<div>";
			
			$('#count').html(data.list.length);
			for(i = 0; i < list.length; i++){
				var content = list[i].inus_CmContent;
				var writer = list[i].inus_CmWriter;
				var commentNum = list[i].inus_commentNum;
				
				comment_html += "<div><span style='display:none;' id='inus_commentNum"+ commentNum +"' >" + commentNum + "</span><br/>";
				comment_html += "<div><span id='inus_CmWriter'><strong>" + writer + "</strong></span><br/>";
				comment_html += "<span id='inus_CmContent'>" + content + "</span><br>";
				
				var con = document.getElementById("inus_userName").value;
				
				
				console.log(writer);
				console.log(con);
				console.log(writer === con);
				if(writer === con){
					comment_html += "<input type=\"button\" id=\"CommentDeleteBtn\" value=\"댓글삭제\" onclick=\"CommentDelete('inus_commentNum"+ commentNum +"')\">";
					comment_html += '<hr></div>';				
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
function CommentDelete(res){
		console.log("삭제할 값 = " + JSON.stringify(res));
		// 댓글 번호의 이름을 가져오는게 모두 고정값이라서 제일 처음값만 가져오는 거임 각 댓글 별로 값의 차이를 둬야함
		// 차이를 두는데에 숫자값이 계속 변하니까 댓글생성할때 inus_commentNum + "숫자" 이런식으로 생성하면
		// 원하는 값을 뽑아오기 수월해짐
		var num = document.getElementById(res).innerText; 
		var num1 = document.getElementById("inus_boardNum").value;
		console.log(num);
		
			$.ajax({
				type:"delete",
				url:"/comment/CommentDelete/"+num1+"/"+num,
				dataType:"text",
				success:function(data){
					console.log(data);
					if(data = num){
						alert("삭제가 완료되었습니다.");
						window.location.reload();
						}
					},
				error:function(data){
					alert("에러");
					console.log(data);
				}
					
				
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
         calbak(res);
      },
      error : function(err){
         console.log('error');
         calbak(err);
      }
   });
}