<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	$("#btnUpdate").click(function() {
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
		
		return true;
	}
	
	function validate() {
		var form = document.f;
		
		var id = $("#id");
		var nickname = $("#nickname");
		
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



<div class="account-wrap" style="width: 390px; height: 470px; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;기본 정보 설정</h4>
	<form id="f" name="f" method="post" action="<c:url value="/members/updatebasicinfo"/>">
		<div class="email-input-wrap" style="width: 350px; height: 350px; margin: auto;">
			
			<input type="text" id="nickname" name="nickname" class="input-text" maxlength="20"
				placeholder="닉네임" value="${nickname}" style="width: 350px; height: 46px;padding: 0 15px;" required autofocus>
			<span id="chknickname" class="error-text"></span>
			<p id="nickNameError" class="error-text" style="visibility: hidden;">닉네임 최대 길이는 20자 입니다. 확인해주세요.</p>
			
			<div class="input-btn-wrap">
				<div class="input">
					<input type="email" id="id" name="id" placeholder="이메일 계정" value="${id}"
						 style="width: 235px; height: 46px; padding: 0 15px;" required autofocus>
					<input type="button" id="btnEmailcheck" value="중복확인" style="width: 110px; height: 46px;">
					<span id="using" class="error-text">${using}</span>
					<span id="chkid" class="error-text">${errMsg}</span>
					<p id="emailError" class="error-text" style="visibility: hidden;">아이디(이메일 계정)를 입력해주세요.</p>
				</div>
				
			</div>
			
			<div class="email-input-wrap small">
				<div class="btn-wrap" style="width:350px; height:42px;margin: auto;float: left;">
					<input type="submit" id="btnUpdate" value="확인" style="width:350px; height:42px;">
				</div>
			</div>
		</div>
	</form>
</div>