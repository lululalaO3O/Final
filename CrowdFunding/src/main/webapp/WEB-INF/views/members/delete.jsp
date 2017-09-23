
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="<c:url value='/resources/css/join.css' />">
<script type="text/javascript">
$(function() {
	$("#btnDelete").click(function() {
		if(nullcheck() && validate()) {
			return $("#f").submit();
		}
	});
	
	function nullcheck() {
		var id = $("#id").val();
		var pwd = $("#pwd").val();
		
		if(id == "" || id == null) {
			$("#chkid")
			.html("아이디를 입력해주세요.")
			.css({
				"visibility" : "visible",
				"color" : "rgb(208, 2, 27)"
			});
			
			return false;
		} else {
			$("#chkid")
			.html("")
			.css({
				"visibility" : "hidden"
			});
		}
		
		if(pwd == "" || pwd == null) {
			$("#chkpwd")
			.html("비밀번호를 입력해주세요.")
			.css({
				"visibility" : "visible",
				"color" : "rgb(208, 2, 27)"
			});
			
			return false;
		} else {
			$("#chkpwd")
			.html("")
			.css({
				"visibility" : "hidden"
			});
		}
		
		return true;
	}
	
	function validate() {
		var form = document.f;
		
		var id = $("#id");
		var pwd = $("#pwd");
		
		// Validation Check
		var idReg = new RegExp("/^[A-Za-z]+[A-Za-z0-9]{7, 15}$/g");
		
		// RegExp Check
		if(!idReg.test(id.val())) {
			var id = $("#id").val();
			
			/* if(id != "" || id == null) {
				$("#chkid")
				.html("아이디 형식이 옳지 않습니다. 아이디는 영문자로 시작하는 8 ~ 16자 영문자 또는 숫자이어야 합니다.")
				.css({
					"visibility" : "visible",
					"color" : "rgb(208, 2, 27)"
				});
				
				return;
			} else {
				$("#chkid")
				.html("")
				.css({
					"visibility" : "hidden"
				});
			} */
		}
		
		return true;
	}
});
</script>
</head>
<body>
<div class="account-wrap" style="width: 390px; height: 260px; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴</h4>
	<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;탈퇴할 계정 정보를 입력하세요</h6>
	<div class="email-input-wrap" style="width: 350px; height: 160px; margin: auto;">
		<form id="f" name="f" method="post" action="<c:url value="/members/delete" />">
			<div class="waccount-wrap" style="width: 350px; height: 140px;">
				<input type="email" id="id" name="id" class="input-text" placeholder="이메일 계정" style="padding: 0 15px; width: 350px; height: 46px;" required autofocus>
				<span id="chkid" class="error-text"></span>
				<p id="emailError" class="error-text" style="visibility: hidden;">아이디(이메일 계정)를 입력해주세요.</p>
				
				<input type="password" id="pwd" name="pwd" class="input-text" placeholder="비밀번호 입력" maxlength="17" style="padding: 0 15px; width: 350px; height: 46px;" required autofocus>
				<span id="chkpwd" class="error-text"></span>
				<p id="pwdError" class="pwd-text" style="font-size: 10px; visibility: hidden;">영문, 숫자, 특수문자 (!@#$%^&amp;*+=-)를 조합한 8자 이상</p>
			</div>
			<div class="btn-wrap" style="width: 350px; height: 42px; margin: auto; float: left;">
	        	<input id="btnDelete" type="button" class="btn-block-mint" value="회원탈퇴" style="width:350px; height:42px;">
	        </div>
        </form>
	</div>
</div>
</body>
</html>