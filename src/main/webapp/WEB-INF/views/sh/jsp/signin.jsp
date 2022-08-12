<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main>
		<div class="login_box">
			<form action="/signin" method="post">
				<div class="input_area"><input type="text" name="username" value="" required placeholder="아이디를 입력해주세요"></div>
				<div class="input_area"><input type="password" name="password" value="" required placeholder="비밀번호를 입력해주세요"></div>
					
				<input type="submit" value="로그인" class="login_btn">
				
				<div class="box">
					<div class="continue_login">
						<label for="continue_login">
							<span>로그인 유지</span>
							<input type="checkbox" id="continue_login" name="remember">
							<i class="check-square"></i>
						</label>
					</div>
				</div>
				
				<div class="join"><a href="/signup">회원 가입</a></div>
			</form>
		</div>
	</main>
</body>
</html>