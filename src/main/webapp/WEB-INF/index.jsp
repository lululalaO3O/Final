<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css' />">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap-theme.min.css' />">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-bordered">
	<tr>
		<td><a href="<c:url value='/main' />">메인페이지</a></td>
	</tr>
</table>
</body>
</html>