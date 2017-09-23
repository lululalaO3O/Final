<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리워드목록</title>
<link rel="stylesheet" href="<c:url value="/resources/css/join.css" />">
</head>
<body>
<div class="account-wrap" style="width: 940px; height: 300px; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;리워드목록</h4>
	<div class="email-input-wrap" style="width: 900px; height: 180px; margin: auto;">
		<table border="1" style="width: 900px;">
			<tr>
				<th>리워드번호</th>
				<th>프로젝트번호</th>
				<th>리워드 상품 이름</th>
				<th>가격</th>
				<th>상세정보</th>
				<th>배송주소 필요여부</th>
				<th>배송료</th>
				<th>구매 제한수량</th>
				<th>리워드 상품 갯수</th>
				<th>발송시작날짜</th>
			</tr>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.rew_num}</td>
					<td>${vo.pro_num}</td>
					<td>${vo.rew_name}</td>
					<td>${vo.price}</td>
					<td>${vo.detail}</td>
					<td>${vo.del_flag}</td>
					<td>${vo.del_pee}</td>
					<td>${vo.limit_ea}</td>
					<td>${vo.amount}</td>
					<td>${vo.del_startdate}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<br>

<!-- 페이징 -->
<div class="account-wrap" style="width: 940px; height: 25px; border: 1px solid black; margin: auto; text-align: center;">
	<c:choose>
		<c:when test="${1 == pu.startPageNum}">
			<a href="<c:url value="/reward/list?pageNum=1&rew_name=${rew_name}&keyword=${keyword}" />">[이전]</a>
		</c:when>
		<c:otherwise>
			<a href="<c:url value="/reward/list?pageNum=${pu.startPageNum - 1}&rew_name=${rew_name}&keyword=${keyword}" />">[이전]</a>
		</c:otherwise>
	</c:choose>
	<c:forEach var="i" begin="${pu.startPageNum}" end="${pu.endPageNum}">
		<c:choose>
			<c:when test="${i == pu.pageNum}">
				<!-- 현재페이지인 경우(색상다르게 표시) -->
				<a href="<c:url value="/reward/list?pageNum=${i}&rew_name=${rew_name}&keyword=${keyword}" />"><span style="color: blue">[${i}]</span></a>
			</c:when>
			<c:otherwise>
				<a href="<c:url value="/reward/list?pageNum=${i}&rew_name=${rew_name}&keyword=${keyword}" />"><span style="color: #555">[${i}]</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:choose>
		<c:when test="${pu.endPageNum < pu.totalPageCount}">
			<a href="<c:url value="/reward/list?pageNum=${pu.endPageNum + 1}&rew_name=${rew_name}&keyword=${keyword}" />">[다음]</a>
		</c:when>
		<c:otherwise>
			<a href="<c:url value="/reward/list?pageNum=${pu.endPageNum}&rew_name=${rew_name}&keyword=${keyword}" />">[다음]</a>
		</c:otherwise>
	</c:choose>
</div>
<br>

<div class="account-wrap" style="width: 940px; height: 50px; border: 1px solid black; margin: auto; text-align: center;">
	<div style="margin-right: 30px;"><a href="<c:url value="/reward/list" />">전체글</a></div>
	<form method="post" action="<c:url value="/reward/list" />">
		<input type="checkbox" name="chkrew_name" value="${param.rew_name}"
			<c:if test="${param.rew_name != null}">
				checked="checked"
			</c:if>>리워드 상품 이름
		<%--
		<input type="checkbox" name="chkidnickname" value="${param.nickname}"
			<c:if test="${param.nickname != null}">
				checked="checked"
			</c:if>>닉네임
		--%>
		<input type="text" name="keyword" value="${param.keyword}">
		<input type="submit" value="검색">
	</form>
</div>
</body>
</html>