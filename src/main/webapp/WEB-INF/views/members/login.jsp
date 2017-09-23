<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="account-wrap" style="width: 390px; height: 100%; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;로그인</h4>
	<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인 하시고 더 놀라운 XXX를 만나보세요!</h6>
	<div class="email-input-wrap" style="width: 350px; height: 200px; margin: auto;">
		<form method="post" action="<c:url value="/members/login" />">
			<input type="email" id="id" name="id" class="input-text error" placeholder="이메일 아이디" style="width: 350px; height: 46px;" required autofocus>
			<p id="emailError" class="error-text" style="font-size: 10px; display: block; color: rgb(208, 2, 27);">${notExistMsg}</p>
			<input type="password" id="pwd" name="pwd" class="input-text error" maxlength="17" placeholder="비밀번호(영문, 숫자, 특수문자 포함 8자 이상)" style="width: 350px; height: 46px;" required autofocus>
			<p id="loginError" class="error-text" style="font-size: 10px; display: block; color: rgb(208, 2, 27);">${errMsg}</p>
			<div class="btn-wrap">
				<label id="saveIdLabel" class="input-check-rnd">
					<input id="saveUserId" type="checkbox" value="아이디 저장">
				</label>
				<p id="txtSaveId" style="display: inline-block;">아이디 저장</p>
				<input id="btnLogin" type="submit" value="로그인" class="btn-block-mint">
			</div>
		</form>
	</div>
	<div class="btm-menu-link with-border" style="width: 350px; height: 75px; margin: auto;">
		<ul>
			<li><a href="">아이디 찾기</a></li>
			<li><a href="">비밀번호 찾기</a></li>
			<li><a href="">회원가입</a></li>
		</ul>
	</div>
</div>
</body>
</html>