<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
</head>
<body>
<form action="updateBoard?inus_boardNum=${boardVo.inus_boardNum}" method="post">
<c:forEach items="${boardUpdate}" var="boardUpdate">
<h1><textarea name="inus_subject">${boardUpdate.inus_subject}</textarea></h1>
<table border=1>
		<tr>
			<th>번호</th>
			<td>${boardUpdate.inus_boardNum}</td>
			<th>작성자</th>
			<td>${boardUpdate.inus_userName}</td>
			<th>작성일</th>
			<td><input type='<fmt:formatDate value="${boardUpdate.inus_Date}" />' readonly="readonly" pattern="yyyy.MM.dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="50" name="inus_content">${boardUpdate.inus_content}</textarea></td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="submit" value="수정하기">
				<input type="reset" value="다시쓰기" > 
			</td>
		</tr>
</table>
</c:forEach>
</form>
</body>
</html>