<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link  rel="stylesheet" type="text/css" href="./css/ServerPageCss.css">
<title>Insert title here</title>
</head>
<body>
<div class="container"> 
        <header>
            <img src="img/superMarch.PNG" alt="로고" id="Logo" onclick="location.href='/MAIN'">
            <nav>
                <ul>
                    <li><p><a href="#">Posting    |   </a></p></li>
                    <li><p><a href="#">Buddy    |   </a></p></li>
                    <li><p><a href="#">ProFile</a></p></li>
                </ul>
            </nav>
        </header>
        <div class="Lbar">
            <ul>
                <li>
                    <p>
                        <img src="" alt="" id="serverImg" href="#">
                    </p>
                </li>
                <li>
                    <p>
                        <a href="/AddServer">Add</a>
                    </p>
                </li>
            </ul>
        </div>
        <div class="Midbar">
            <ul>
                <li onclick="showMainChatRoom()"><p>메인채팅방</p></li>
                <li onclick="showOneToOneChatRoom()"><p>티모꼬딱지</p></li>
                <li><p><a href="/AddOneToOneChat">Add</a></p></li>
            </ul>
            <div class="MainChat">
                <img src="img/changeicon.png" alt="OpenMusic" id="OpenMusic" onclick="PageReconstruction()">
                <div class="MainChatRoom">메인채팅방</div>
                <div class="OneToOneChatRoom" style="display: none;">일대일채팅방</div>
            
            </div>
            <input type="text" name="" id="chatInput" placeholder="채팅인풋칸">
        </div>
        
    </div>
    <script>
        function showMainChatRoom(){
            document.querySelector('.MainChatRoom').style.display = "block";	// 메인채팅 부분을 화면에 표시
            document.querySelector('.OneToOneChatRoom').style.display = "none";    // 일대일채팅 부분을 화면에서 감춤
        }
        function showOneToOneChatRoom(){
            document.querySelector('.OneToOneChatRoom').style.display = "block";   // 일대일채팅 부분을 화면에 표시
            document.querySelector('.MainChatRoom').style.display = "none";    // 메인채팅 부분을 화면에서 감춤
        }
        /* function PageReconstruction(){
        	 document.querySelector('.MainChatRoom').style.display = "block";
        } */
    </script>
</body>
</html>