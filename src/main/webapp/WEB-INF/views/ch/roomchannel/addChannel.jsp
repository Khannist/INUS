<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="channelNameInput" style="display: none;">
	<h2>서버 커스터마이징</h2>
	<div id="channelThumbFrame">
		<div class="channelThumb">
			<input type="file" id="chnThumbFile" style="display:none;"  disabled="disabled">
			<label for="chnThumbFile" class="chnThumbFile" onclick="alert('업데이트 예정입니다.')">파일 업로드</label>
		</div>
	</div>
	<p id="textchannel">서버 이름</p>
	<input type="text" name="channelName" id="channelName" placeholder="채널 이름 입력" maxlength="20">
	<input type="button" name="inputChannelName" id="inputChannelName" value="채널 생성" onclick="channelCreateName();">
</div>
</body>
</html>