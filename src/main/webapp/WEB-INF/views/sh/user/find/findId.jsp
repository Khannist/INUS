<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/link.jsp" %>
<link rel="stylesheet" href="/css/layout/nav.css">
<link rel="stylesheet" href="/css/user/find/find.css">
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
 
	
	<main class="find_id_page">
		<div class="find_info">
			<h3>가입하신 이메일을 입력해주세요</h3>
			<input type="email" name="email" class="email">
			<button class="find_btn">찾기</button>
			<div class="find_password"><a href="/find/password">비밀번호 찾기</a></div>
		</div>
	</main>	
 
	
<%@ include file="/WEB-INF/views/layout/nav.jsp" %>	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>	
 
	<script src="/js/user/find/findId.js" ></script>
	<script src="/js/utils/util.js" ></script>
 
</body>
</html>
