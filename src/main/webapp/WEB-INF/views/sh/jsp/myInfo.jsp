<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
 
	<div class="wrap">
	
		<section class="title">
			<h1>내 정보 수정</h1>
		</section>
		
	    <main>
		    <div class="info_box">
		    	
				<h2>닉네임</h2>
				<div class="user_nickname">${principal.nickname }</div>		    	
		    	
	    		<h2>비밀번호</h2>
		    	<div>
		    		<div class="input_box">
			    		<div>
			    			<span>현재 비밀번호</span>
			    			<input class="present_password" type="password" placeholder="현재 비밀번호" >
			    		</div>
			    		
			    		<div>
			    			<span>신규 비밀번호</span>
			    			<input class="new_password" type="password" placeholder="신규 비밀번호" maxlength="20" >
			    		</div>
			    		
			    		<div>
			    			<span>신규 비밀번호 확인</span>
			    			<input class="new_password_check" type="password" placeholder="신규 비밀번호 확인" maxlength="20" >
			    		</div>
		    		</div>
		    		
		    		<div class="btn_box">
			    		<button type="button" class="pwd_modify">변경</button>
		    		</div>
		    	</div>
		    	
		    
            	<h2>닉네임 변경</h2>
				
				<div>
		             <div class="input_box">
		            	<input type="text" class="nickname" name="nickname" required placeholder="변경하실 닉네임을 입력해 주세요">
					</div>
					
					<div class="btn_box">
						<button type="button" class="nickname_modify">수정</button>
					</div>
				</div>
				
				
			</div>
	    </main>
    </div>
    
    
	
	<script type="text/javascript" src="/js/user/myInfo.js" ></script>
 	<script type="text/javascript" src="/js/utils/util.js" ></script>
    
</body>
</html>
