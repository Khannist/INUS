<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link type="text/css" rel="stylesheet" href="bs/css/login.css">
</head>
<body>
	<main>
		<div class="login_box">
		
				<form action="/signup" method="post" >
					
					<div class="input_aera">
		            	<input type="text" name="userId"  class="userId" maxlength="20"  placeholder="아이디를 입력해 주세요"  value="${signupDto.userId}" >
						<span class="msg_box">${valid_userId}</span>
	            	</div>          
		               
					<div class="input_aera">
						<input type="password" class="password1" name="password" maxlength="20"  placeholder="비밀번호를 입력해 주세요"  value="${signupDto.password}">
					</div>
	               
					<div class="input_aera">
						<input type="password" class="password2" maxlength="20"  placeholder="비밀번호를 한번더 입력해 주세요" value="${signupDto.password}">
			            <span class="msg_box">${valid_password}</span>
	               	</div>
		               
	               	<div class="input_aera">
	               		<input type="text" name="email" class="email"  placeholder="이메일을 입력해 주세요"  value="${signupDto.email}" >
		                <span class="msg_box">${valid_email}</span>
               		</div>
		               
					<div class="input_aera">
						<input type="text" class="nickname" name="nickname" maxlength="20"  placeholder="사용하실 닉네임을 입력해 주세요"  value="${signupDto.nickname}">
	               		<span class="msg_box">${valid_nickname}</span>
					</div>
		      
	                
	               <input type="submit" value="회원가입" class="login_btn" >
			</form>
        </div>
 
    </main>
</body>
</html>