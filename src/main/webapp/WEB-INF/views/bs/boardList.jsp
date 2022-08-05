<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link type="text/css" rel="stylesheet" href="css/inus.css">
</head>
<body>
<div class = "box">
<c:forEach items="${boardList}" var="boardList">
<p><a href="boardView?inus_boardNum=${boardList.inus_boardNum}">${boardList.inus_subject}</a></p>
<p>이슈 &nbsp;|&nbsp; 
<fmt:formatDate value="${boardList.inus_Date}" type="date" dateStyle="short"/> &nbsp;|&nbsp; 
${boardList.inus_userName} &nbsp;|&nbsp; ${boardList.inus_boardNum} &nbsp;|&nbsp; 조회수:${boardList.boardCount}</p><hr>
</c:forEach>
</div>
<input type="button" value="게시물 작성하기" onclick="location.href='boardWrite'" >

</body>
</html>