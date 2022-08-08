<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link  rel="stylesheet" type="text/css" href="/css/IndexCss.css">
<title>인덱스 화면(로그인화면)</title>
</head>
<body>
<p><a href="/MPRO">메인페이지 프로필 출력문으로(임시문구)</a></p>
<p><a href="/MAIN">메인페이지로(임시문구)</a></p>
    
    <input type="button" value="Login"  id="LoginChapter" onclick="showLogin()">
    <input type="button" value="JoinUs" id="JoinChapter" onclick="showJoinUS()">
    <form action="#" class="form1">
        <img src="img/KakaoTalk_20220725_163759866.jpg" alt="logo" id="logoImg">
        <p id="title">간편로그인</p>
        <ul>
            <li><input type="text" id="loginID"></li>
            <li><input type="password" id="loginPW"></li>
            <li><input type="submit" id="submitButton" src="/MAIN"></li>
            <li>
                <p id="memo">
                    <span id="spanInus">INUS</span> Copyright @Inus Crop.<br> All Right Reserved
                </p>
            </li>
        </ul> 
    </form>
    <form class="form2" style="display: none;">
        <img src="img/KakaoTalk_20220725_163759866.jpg" alt="logo" id="logoImg">
        <p id="title">회원가입 약정 안내</p>
        <ul>
            <li>이용약관 동의</li>
            <li>개인정보 수집 및 이용 동의</li>
            <li>프로모션 정보 수신 동의</li>
            <li>
                <a href="/JOIN"><input type="button" value="함께하시겠어요?"></a>
            </li>
        </ul>
    </form>
    <script>
        function showLogin(){
            document.querySelector('.form1').style.display = "block";	// 로그인폼 부분을 화면에 표시
            document.querySelector('.form2').style.display = "none";    // 로그인폼 부분을 화면에서 감춤
        }
        function showJoinUS(){
            document.querySelector('.form2').style.display = "block";   // 회원가입폼 부분을 화면에 표시
            document.querySelector('.form1').style.display = "none";    // 회원가입폼 부분을 화면에서 감춤
        }
    </script>
</body>
</html>