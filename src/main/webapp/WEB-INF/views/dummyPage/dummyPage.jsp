<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link  rel="stylesheet" type="text/css" href="ch/css/channel.css">
<link  rel="stylesheet" type="text/css" href="NY/css/ServerLbar.css">
</head>
<body>
<input type="hidden" name="userId" id="userId" value="A">
<div class="ServerList">
	<div id="serverCount">	<!-- 필요없어보인다고 지우면 안됌 -->
		<jsp:include page="../ch/roomchannel/roomChannel.jsp"></jsp:include>
	</div>
</div>
<jsp:include page="../ch/roomchannel/addChannel.jsp"></jsp:include>
<script type="text/javascript" src="/ch/js/channel/mainchannel.js"></script>
</body>
</html>