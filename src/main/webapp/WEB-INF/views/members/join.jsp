<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<link rel="stylesheet" href="<c:url value='/resources/css/join.css' />">
<script type="text/javascript">
$(function() {
	$("#btnEmailcheck").click(function() {
		var id = $("#id").val();
		
		if(id == "" || id == null) {
			$("#chkid")
			.html("아이디를 입력해주세요.")
			.css({
				"visibility" : "visible",
				"color" : "rgb(208, 2, 27)"
			});
			
			return false;
		} else {
			emailcheck();
		}
	});
	
	$("#btnJoin").click(function() {
		emailcheck();
		
		if(nullcheck() && validate()) {
			return $("#f").submit();
		}
	});
	
	function emailcheck() {
		var id = $("#id").val();
		
		$.ajax({
			url : "<c:url value='/members/isexist' />",
			dataType : "xml",
			type : "post",
			data : "id=" + id,
			success : function(data) {
				var using = $(data).find("using").text();
				
				if(id != null) {
					if(using == "true") {
						$("#chkid")
						.html("사용불가능한 아이디입니다.")
						.css({
							"color" : "rgb(208, 2, 27)"
						});
						
						return false;
					}
					
					else {
						$("#chkid")
						.html("사용가능한 아이디입니다.")
						.css({
							"color" : "blue"
						});
						
						return true;
					}
				}
			}
		});
	}
	
	function nullcheck() {
		var id = $("#id").val();
		var nickname = $("#nickname").val();
		var pwd = $("#pwd").val();
		var checkpwd = $("#checkpwd").val();
		var jumin1 = $("#jumin1").val();
		var jumin2 = $("#jumin2").val();
		
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
		
		if(nickname == "" || nickname == null) {
			$("#chknickname")
			.html("닉네임을 입력해주세요.")
			.css({
				"visibility" : "visible",
				"color" : "rgb(208, 2, 27)"
			});
			
			return false;
		} else {
			$("#chknickname")
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
		
		if(checkpwd == "" || checkpwd == null) {
			$("#chkcheckpwd")
			.html("비밀번호 확인을 입력해주세요.")
			.css({
				"visibility" : "visible",
				"color" : "rgb(208, 2, 27)"
			});
			
			return false;
		} else {
			$("#chkcheckpwd")
			.html("")
			.css({
				"visibility" : "hidden"
			});
		}
		
		if(jumin1 == "" || jumin1 == null) {
			$("#chkjumin1")
			.html("주민번호 앞자리를 입력해주세요.")
			.css({
				"visibility" : "visible",
				"color" : "rgb(208, 2, 27)"
			});
			
			return false;
		} else {
			$("#chkjumin1")
			.html("")
			.css({
				"visibility" : "hidden"
			});
		}
		
		if(jumin2 == "" || jumin2 == null) {
			$("#chkjumin2")
			.html("주민번호 뒷자리를 입력해주세요.")
			.css({
				"visibility" : "visible",
				"color" : "rgb(208, 2, 27)"
			});
			
			return false;
		} else {
			$("#chkjumin2")
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
		var nickname = $("#nickname");
		var pwd = $("#pwd");
		var checkpwd = $("#checkpwd");
		var jumin1 = $("#jumin1");
		var jumin2 = $("#jumin2");
		
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
<div class="account-wrap" style="width: 390px; height: 470px; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;이메일로 회원가입</h4>
	<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가정보를 입력하고 회원가입을 완료하세요</h6>
	<div class="email-input-wrap" style="width: 350px; height: 350px; margin: auto;">
		<form id="f" name="f" method="post" action="<c:url value="/members/insert" />">
			<div class="waccount-wrap" style="width: 350px; height: 350px;">
				<input type="email" id="id" name="id" class="input-text" placeholder="이메일 계정" style="width: 235px; height: 46px; padding: 0 15px;" required autofocus>
				<input type="button" id="btnEmailcheck" class="btn-mint" value="중복확인" style="width: 110px; height: 46px;">
				<span id="using" class="error-text">${using}</span>
				<span id="chkid" class="error-text"></span>
				<p id="emailError" class="error-text" style="visibility: hidden;">아이디(이메일 계정)를 입력해주세요.</p>
				
				<input type="text" id="nickname" name="nickname" class="input-text error" maxlength="20" placeholder="닉네임" style="width: 350px; height: 46px; padding: 0 15px;" required autofocus>
				<span id="chknickname" class="error-text"></span>
				<p id="nickNameError" class="error-text" style="visibility: hidden;">닉네임 최대 길이는 20자 입니다. 확인해주세요.</p>
				
				<input type="password" id="pwd" name="pwd" class="input-text" placeholder="비밀번호 입력" maxlength="17" style="padding: 0 15px; width: 350px; height: 46px;" required autofocus>
				<span id="chkpwd" class="error-text"></span>
				<p id="pwdError" class="pwd-text" style="font-size: 10px; visibility: hidden;">영문, 숫자, 특수문자 (!@#$%^&amp;*+=-)를 조합한 8자 이상</p>
				
				<input type="password" id="checkpwd" class="input-text" placeholder="비밀번호 확인" maxlength="17" style="padding: 0 15px; width: 350px; height: 46px;" required autofocus>
				<span id="chkcheckpwd" class="error-text"></span>
				<p id="pwdNotEqualError" class="error-text" style="visibility: hidden;">동일한 비밀번호를 입력해주세요.</p>
				
				<input type="text" id="jumin1" name="jumin1" class="input-text" placeholder="주민번호 앞자리" maxlength="6" style="padding: 0 15px; width: 168.5px; height: 46px;" required autofocus>
				-
				<input type="text" id="jumin2" name="jumin2" class="input-text" placeholder="주민번호 뒷자리" maxlength="7" style="padding: 0 15px; width: 168.5px; height: 46px;" required autofocus>
				<span id="chkjumin1" class="error-text" style="visibility: hidden;"></span>
				<span id="chkjumin2" class="error-text" style="visibility: hidden;"></span>
			</div>
			<div class="btn-wrap" style="width:350px; height:42px;margin: auto;float: left;">
	        	<!-- <input type="button" id="btnJoin" class="btn-block-mint" value="동의하고 가입완료" style="width:350px; height:42px;"> -->
	        	<input type="submit" id="btnJoin" class="btn-block-mint" value="동의하고 가입완료" style="width:350px; height:42px;">
	        </div>
        </form>
	</div>
</div>
</body>
</html>