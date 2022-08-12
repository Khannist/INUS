<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link type="text/css" rel="stylesheet" href="bs/css/login.css">
</head>
<body>
<div class="login-box">
  <h2>Create Account</h2>
  
  <form action="/joinMembership" method="post">
  	
    <div class="user-box">
      <input type="text" name="userId" required="" maxlength="20" value="${signupDto.userId}">
      <span class="msg_box">${valid_userId}</span>
      <label>ID</label>
    </div>
    
    <div class="user-box">
      <input type="text" name="nickname" maxlength="20" required="" value="${signupDto.nickname}">
      <label>NickName</label>
    </div>
    
    <div class="user-box">
	  <input type="password" class="password1" name="password" maxlength="20" required=""  value="${signupDto.password}">
	  <label>Password</label>
	</div>
	               
	<div class="user-box">
	  <input type="password" class="password2" maxlength="20" required=""  value="${signupDto.password}">
      <span class="msg_box">${valid_password}</span>
      <label>Password Check</label>
    </div>
    
    <div class="user-box">
      <input type="email" name="email" required="" value="${signupDto.email}">
      <span class="msg_box">${valid_email}</span>
      <label>Email</label>
    </div>
    
    <a href="/login">
    
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <input type="submit" value="Registration" id="a" style="display: none;">
      <label for="a">가입완료</label>
    </a>
    <a href="/boardList">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Reset
    </a>
  </form>
</div>
</body>
</html>