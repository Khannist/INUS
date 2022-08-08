<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <a href="/SERVER">서버페이지로 이동(임시)</a>
 <br><br>
 <table border="1">
        <tr>
            <th>이름</th>
            <th>닉네임</th>
            <th>메모</th>
        </tr>
        <c:forEach items="${profilelist}" var="profilelist">
        <tr>
            <td>${profilelist.m_name}</td>
            <td>${profilelist.m_nickname}</td>
            <td>${profilelist.m_memo}</td>
            </tr>
        </c:forEach>
</table>
</body>
</html>