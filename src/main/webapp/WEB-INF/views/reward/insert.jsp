<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리워드 추가</title>
</head>
<body>
<div class="account-wrap" style="width: 390px; height: 470px; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;리워드 추가</h4>
	<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가정보를 입력하고 리워드를 추가하세요</h6>
	<div style="width: 350px; height: 350px; margin: auto;">
		<form id="f" name="f" method="post" action="<c:url value="/reward/insert" />">
			<div class="waccount-wrap" style="width: 350px; height: 350px;">
				<input type="text" id="pro_num" name="pro_num" class="input-text" placeholder="프로젝트 번호" required autofocus>
				<input type="text" id="rew_name" name="rew_name" class="input-text" placeholder="리워드 상품 이름" required autofocus>
				<input type="text" id="price" name="price" class="input-text" placeholder="가격" required autofocus>
				<input type="text" id="detail" name="detail" class="input-text" placeholder="상세정보" required autofocus>
				<input type="text" id="del_flag" name="del_flag" class="input-text" placeholder="배송주소 필요여부" required autofocus>
				<input type="text" id="del_pee" name="del_pee" class="input-text" placeholder="배송료" required autofocus>
				<input type="text" id="limit_ea" name="limit_ea" class="input-text" placeholder="구매 제한수량" required autofocus>
				<input type="text" id="amount" name="amount" class="input-text" placeholder="리워드 상품 갯수" required autofocus>
				<!-- <input type="text" id="del_startdate" name="del_startdate" class="input-text" placeholder="발송시작날짜" required autofocus> -->
			</div>
			<div class="btn-wrap" style="width:350px; height:42px;margin: auto;float: left;">
	        	<input type="submit" id="btnInsert" class="btn-block-mint" value="등록" style="width:350px; height:42px;">
	        </div>
        </form>
	</div>
</div>
</body>
</html>