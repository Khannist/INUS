<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글</title>

</head>
<body>
   <div class="comment-box">
                    
   		                 <div class="comment-count">댓글 <span id="count">0</span></div>

   		                 	   <!-- <span class="c-icon"><i class="fa-solid fa-user"></i>  -->
   		                 <div class="comment-name">
	                        <span class="anonym">작성자 : 
	                    	    <input type="text" class="form-control" id="inus_CmWriter" placeholder="이름" name ="inus_CmWriter" value='${inus_CmWriter}' readonly  style="width: 100px; border:none;">
	                        </span>
	                      </div> 
                    <div class="comment-sbox">
                        <textarea class="comment-input" id="inus_CmContent" cols="80" rows="2" name="inus_CmContent" ></textarea>
					</div>
                    	<div class="regBtn">
                    		<input type="button" id="Comment_regist" value="댓글등록">
                  		</div>
    </div>
  <div class="comment_Box" style="border:1px solid gray;"> <!-- 댓글이 들어갈 박스 -->
		<p>아직 작성된 글이 없습니다.</p>
		
	</div>
</body>
</html>