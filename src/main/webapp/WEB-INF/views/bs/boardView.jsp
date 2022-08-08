<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
</head>
<body>
<c:forEach items="${boardView}" var="boardView">
<h1>${boardView.inus_subject}</h1>
<table border=1>
		<tr>
			<th>번호</th>
			<td id = "inus_boardNum">${boardView.inus_boardNum}</td>
			<th>작성자</th>
			<td id="inus_userName">${boardView.inus_userName}</td>
			<th>작성일</th>
			<td><fmt:formatDate value="${boardView.inus_Date}" type="both" dateStyle="medium" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${boardView.inus_content}</td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="button" value="수정하기" onclick="location='boardUpdate?inus_boardNum=${boardView.inus_boardNum}'">
				<input type="button" value="삭제하기" onclick="location='boardDelete?inus_boardNum=${boardView.inus_boardNum}'">
				<input type="button" value="목록 보기" onclick="location='boardList'">
			</td>
		</tr>
</table>
</c:forEach>
<%@ include file="comment.jsp"%>
<%-- <script type="text/javascript" src="/js/comment.js"></script> --%>
<script type="text/javascript" src="bs/js/reply.js"></script>
</body>
</html>