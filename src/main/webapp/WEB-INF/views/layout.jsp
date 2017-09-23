<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/resources/jquery/js/jquery-3.2.1.js' />"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css' />">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap-theme.min.css' />">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js' />"></script>
 
<link rel="stylesheet" href="<c:url value='/resources/css/khs.css' />">
</head>
<body>
<div id="wrap">
	<div id="header" style="height: 10%;">
		<tiles:insertAttribute name="header" /><!-- /WEB-INF/views/header.jsp -->
	</div>
	<div id="content" style="height: 80%;">
		<tiles:insertAttribute name="content" /><!-- /WEB-INF/views/main.jsp -->
	</div>
	<div id="footer" style="height: 10%;">
		<tiles:insertAttribute name="footer" /><!-- /WEB-INF/views/footer.jsp -->
	</div>
</div>
</body>
</html>