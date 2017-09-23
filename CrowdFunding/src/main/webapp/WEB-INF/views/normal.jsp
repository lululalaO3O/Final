<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<div style="text-align: center">${message}</div>
	<br>
	<form class="form-horizontal" >
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label"></label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="email"
					placeholder="이메일" style="width: 65%"> <input type="button"
					class="btn btn-default" style="width: 20%" value="중복체크">
			</div>
		</div>

		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label"></label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="text" placeholder="닉네임"
					style="width: 85%">
			</div>
		</div>

		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label"></label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="pwd"
					placeholder="비밀번호 영문, 숫자, 특수문자 (!@#$%^&*+=-)를 조합한 8자 이상"
					style="width: 85%">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label"></label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="pwd2"
					placeholder="비밀번호확인" style="width: 85%">
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-default" style="width: 85%"
					value="동의하고 가입하기">
			</div>
		</div>
	</form>
</body>
</html>