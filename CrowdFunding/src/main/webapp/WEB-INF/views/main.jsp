<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table table-bordered">
	<tr>
		<td style="width: 20%;">작성자</td>
		<td style="width: 80%;"><input type="text" name="writer" id="writer"></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="<c:url value='/' />"><input type="button" class="btn btn-primary" value="index.jsp"></a>
		</td>
	</tr>
</table>
</body>
</html>