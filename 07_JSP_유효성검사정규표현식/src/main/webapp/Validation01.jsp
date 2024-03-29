<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 유효성 검사</title>
</head>
<body>
	<h1>로그인</h1>
	<h3>유효성 검사</h3>
	<!-- 
		onsubmit="return 여부"
		- 여부: true 이면, submit(요청전송)
			   false 이면, submit 안함
			   
			   "
	 -->
	<form name="loginForm" onsubmit="return checkLogin()"  action="validation01_pro.jsp" method="post">
		<p>아이디: <input type="text" name="id" maxlength="20"/> </p>
		<p>비밀번호: <input type="password" name="pw" /> </p>
		<p><input type="submit" value="로그인"/> </p>
	</form>	
	
	<script>
		//로그인 유효성 검사
		function checkLogin() {
			// alert("로그인 요청")
			let form = document.loginForm  // name이 loginForm인 폼 요소를 가져옴
			
			let id = form.id.value
			let pw = form.pw.value
			
			// 1. 아이디는 필수값, 6~20자 이내
			if (id == "") {
				alert("아이디를 입력해주세요")
				form.id.focus()
				return false
			}
			
			// 아이디 글자 수 검증
			if (id.length < 6 || id.length > 20) {
				alert("아이디는 6~20자 이내로 입력 가능합니다.")
				form.id.select() //아이디 입력값을 선택
				return false
			}
			
			// 2. 비밀번호는 필수값, 6자 이상
			if (pw == "") {
				alert("비밀번호를 입력해주세요")
				form.pw.focus()
				return false
			}
			
			// 비밀번호 글자 수 검증
			if (pw.length < 6 || pw.length > 20) {
				alert("비밀번호는 6~20자 이내로 입력 가능합니다.")
				form.pw.select() //아이디 입력값을 선택
				return false
			}
			
			alert(id)
			alert(pw)
			
			return true
		}
	</script>
</body>
</html>