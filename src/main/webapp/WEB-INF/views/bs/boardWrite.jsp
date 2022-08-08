<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시글 작성</h1>
<!-- 사용자가 입력한 내용들을 서버로 전달하기 위해 form 태그 이용. action에는 요청을 수행할 서버 주소를 입력 -->
<div>
<form action="boardInsert" method="POST">
	<h3>제목</h3>
	<table>
		<tr>
			<td><input type="text" id="subject" name="inus_subject" ></td>
		</tr>
	</table>
	<h3>작성자</h3>
	<table>	
		<tr>
			
			<td><input type="text" name="inus_userName" value="작성자">
		</tr>
	</table>
	<h3>내용</h3>
	<table>
		<tr>
			<td><textarea id="content" name="inus_content" cols="80" rows="10"></textarea></td>
		</tr>
	</table>
	<input type="submit" id="submit" value="저장">
	<input type="button" value="돌아가기" onclick="location='boardList'">
	
</form>
</div>
</body>
</html>