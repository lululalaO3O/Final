<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>관리자 로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<%-- <body>
<div class="account-wrap" style="width: 390px; height: 100%; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;관리자로그인</h4>
	<div class="email-input-wrap" style="width: 350px; height: 200px; margin: auto;">
		<form method="post" action="<c:url value="/admin/login" />">
			<input type="text" id="id" name="id" class="input-text error" placeholder="관리자 아이디" style="width: 350px; height: 46px;" required autofocus>
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
			<li><a href="/web/waccount/find/id">아이디 찾기</a></li>
			<li><a href="/web/waccount/find/pwd">비밀번호 찾기</a></li>
		</ul>
	</div>
</div>
</body> --%>
<body class="w3-light-grey">
<div class="w3-container" style="padding-top: 54px;">
<h4>&nbsp;&nbsp;&nbsp;&nbsp;관리자로그인</h4>
	<div class="email-input-wrap" style="width: 350px; height: 200px; margin: auto;">
		<form method="post" action="<c:url value="/admin/login" />">
			<input type="text" id="id" name="id" class="input-text error" placeholder="관리자 아이디" style="width: 350px; height: 46px;" required autofocus>
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
			<li><a href="/web/waccount/find/id">아이디 찾기</a></li>
			<li><a href="/web/waccount/find/pwd">비밀번호 찾기</a></li>
		</ul>
	</div>
</div>
</body>
</html>