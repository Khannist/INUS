<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/link.jsp" %>
<link rel="stylesheet" href="/css/layout/nav.css">
<link rel="stylesheet" href="/css/user/find/find.css">
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
	
	<main class="password_modify_page">
		<div class="find_info">	
			<h3>새로운 비밀번호로 재설정해주세요</h3>
			
			<div class="box">
				<span>새 비밀번호</span>
				<input type="password" class="password1" name="password">
			</div>
			
			<div class="box">
				<span>새 비밀번호 확인</span>
				<input type="password" class="password2">
				<div class="password_check_msg"></div>
			</div>
			<button class="modify_btn" >변경하기</button>
		</div>
	</main>
	
	
<%@ include file="/WEB-INF/views/layout/nav.jsp" %>	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>	
 
	<script src="/js/user/find/modify.js"></script>
 
 
<script>
 
</script>
</body>
</html>
