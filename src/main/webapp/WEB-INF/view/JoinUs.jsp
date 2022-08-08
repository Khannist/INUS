<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link  rel="stylesheet" type="text/css" href="./css/JoinUs.css">
<title>회원가입페이지</title>
</head>
<body>
<form action="#" method="POST">
        <img src="img/KakaoTalk_20220725_163759866.jpg" alt="logo" id="logoImg">
        <ul>
            <li>
                <p>이름❤️</p>
                <input type="text" name="username" id="username" required>
            </li>
            <li>
                <p>닉네임</p>
                <input type="text" name="nickname" id="nickname">
            </li>
            <li>
                <p>아이디❤️</p>
                <input type="text" name="userid" id="userid" required>
            </li>
            <li>
                <p>비밀번호❤️</p>
                <input type="password" name="password" id="password1" required>
            </li>
            <li>
                <p>비밀번호 확인❤️</p>
                <input type="password" name="password2" id="password2" required>
            </li>
            <li>
                <p>이메일❤️</p>
                <input type="email" name="email" id="email" required>
            </li>
            
            <li>
                <a href="/MAIN">
                	<input type="submit" value="회원가입" class="joinWith" onclick="JoinMessage()">
                </a>
            </li>
        </ul>
    </form>
    <script>
        function NullNickname(){
            
        }
        function JoinMessage(){
        	alert("회원가입을 환영합니다.");
        }
    </script>
</body>
</html>