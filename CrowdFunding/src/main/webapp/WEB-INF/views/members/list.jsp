<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link rel="stylesheet" href="<c:url value="/resources/css/join.css" />">
</head>
<body>
<div class="account-wrap" style="width: 600px; height: 300px; border: 1px solid black; margin: auto;">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;회원목록</h4>
	<div class="email-input-wrap" style="width: 560px; height: 180px; margin: auto;">
		<table border="1" style="width: 500px;">
			<tr>
				<th>회원번호</th>
				<th>아이디</th>
				<th>닉네임</th>
				<th>비밀번호</th>
				<th>주민번호</th>
				<!-- <th>주민번호1</th> -->
				<!-- <th>주민번호2</th> -->
			</tr>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.mem_num}</td>
					<td><a href="<c:url value="/members/select?num=${vo.mem_num}" />">${vo.id}</a></td>
					<td>${vo.nickname}</td>
					<td>${vo.pwd}</td>
					<td>${vo.jumin}</td>
					<%-- <td><c:out value="${fn:substring(vo.jumin, 0, 6)}" /></td> --%>
					<%-- <td><c:out value="${fn:substring(vo.jumin, 7, 14)}" /></td> --%>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<br>

<!-- 페이징 -->
<div class="account-wrap" style="width: 600px; height: 25px; border: 1px solid black; margin: auto; text-align: center;">
	<c:choose>
		<c:when test="${1 == pu.startPageNum}">
			<a href="<c:url value="/members/list?pageNum=1&id=${id}&nickname=${nickname}&keyword=${keyword}" />">[이전]</a>
		</c:when>
		<c:otherwise>
			<a href="<c:url value="/members/list?pageNum=${pu.startPageNum - 1}&id=${id}&nickname=${nickname}&keyword=${keyword}" />">[이전]</a>
		</c:otherwise>
	</c:choose>
	<c:forEach var="i" begin="${pu.startPageNum}" end="${pu.endPageNum}">
		<c:choose>
			<c:when test="${i == pu.pageNum}">
				<!-- 현재페이지인 경우(색상다르게 표시) -->
				<a href="<c:url value="/members/list?pageNum=${i}&id=${id}&nickname=${nickname}&keyword=${param.keyword}" />"><span style="color: blue">[${i}]</span></a>
			</c:when>
			<c:otherwise>
				<a href="<c:url value="/members/list?pageNum=${i}&id=${id}&nickname=${nickname}&keyword=${param.keyword}" />"><span style="color: #555">[${i}]</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:choose>
		<c:when test="${pu.endPageNum < pu.totalPageCount}">
			<a href="<c:url value="/members/list?pageNum=${pu.endPageNum + 1}&id=${id}&nickname=${nickname}&keyword=${keyword}" />">[다음]</a>
		</c:when>
		<c:otherwise>
			<a href="<c:url value="/members/list?pageNum=${pu.endPageNum}&id=${id}&nickname=${nickname}&keyword=${keyword}" />">[다음]</a>
		</c:otherwise>
	</c:choose>
</div>
<br>

<div class="account-wrap" style="width: 600px; height: 50px; border: 1px solid black; margin: auto; text-align: center;">
	<div style="margin-right: 30px;"><a href="<c:url value="/members/list" />">전체글</a></div>
	<form method="post" action="<c:url value="/members/list" />">
		<input type="checkbox" name="chkid" value="${param.id}"
			<c:if test="${param.id != null}">
				checked="checked"
			</c:if>>아이디
		<input type="checkbox" name="chkidnickname" value="${param.nickname}"
			<c:if test="${param.nickname != null}">
				checked="checked"
			</c:if>>닉네임
		<input type="text" name="keyword" value="${param.keyword}">
		<input type="submit" value="검색">
	</form>
</div>
</body>
</html>