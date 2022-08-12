<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link type="text/css" rel="stylesheet" href="bs/css/login.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
<div class="login-box" >
  <h2>Login</h2>
<<<<<<< HEAD
  <form>
    <div class="user-box" data-aos="fade-right" data-aos-duration="1000">
      <input type="text" name="" required="">
      <label>Username</label>
    </div>
    <div class="user-box" data-aos="fade-right" data-aos-duration="1000">
      <input type="password" name="" required="">
=======
  <form action="/login" method="post">
    <div class="user-box" data-aos="fade-right" data-aos-duration="2000">
      <input type="text" name="username" required="">
      <label>Username</label>
    </div>
    <div class="user-box" data-aos="fade-right" data-aos-duration="2000">
      <input type="password" name="password" required="">
>>>>>>> a1c617c6eb0cff720e0fe7c37bcf778d005e763f
      <label>Password</label>
    </div>
    <a href="/boardList">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <input type="submit" value="Registration" id="a" style="display: none;">
      <label for="a">login</label>
    </a>
    <a href="/joinMembership">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      create
    </a>
  </form>
</div>
<script type="text/javascript">
  AOS.init();
</script>
</body>
</html>