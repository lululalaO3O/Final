
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원탈퇴</title>
<body>
<h2>회원탈퇴 완료</h2>
<table border="1" style="width: 500px;">
	<tr>
		<c:choose>
			<c:when test="${requestScope.result == 'success'}">
				<td>회원탈퇴 성공!</td>
			</c:when>
			<c:when test="${requestScope.result == 'fail'}">
				<td>회원탈퇴 실패!</td>
			</c:when>
		</c:choose>
	</tr>
</table>
</body>
</html>