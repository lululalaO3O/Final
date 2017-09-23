<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
</head>
<body>
<div id="wrap">
	<div id="header">
		<tiles:insertAttribute name="a_header" /><!-- /WEB-INF/views/admins/layout/header.jsp -->
	</div>
	<div id="content">
		<tiles:insertAttribute name="a_content" /><!-- /WEB-INF/views/admins/layout/main.jsp -->
	</div>
	<div id="footer">
		<tiles:insertAttribute name="a_footer" /><!-- /WEB-INF/views/admins/layout/footer.jsp -->
	</div>
</div>
</body>
</html>