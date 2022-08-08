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
  <form>
    <div class="user-box">
      <input type="text" name="" required="">
      <label>ID</label>
    </div>
    <div class="user-box">
      <input type="text" name="" required="">
      <label>NickName</label>
    </div>
    <div class="user-box">
      <input type="password" name="" required="">
      <label>Password</label>
    </div>
    <div class="user-box">
      <input type="password" name="" required="">
      <label>Check Password</label>
    </div>
    <div class="user-box">
      <input type="email" name="" required="">
      <label>Email</label>
    </div>
    
    <a href="/login">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      가입완료
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