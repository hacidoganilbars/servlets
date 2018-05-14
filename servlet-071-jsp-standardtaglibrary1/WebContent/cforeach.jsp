<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cforeach.jsp</title>
</head>
<body>
	<c:forEach var="x" begin="1" end="5">
		<c:out value="${x }"></c:out>
	</c:forEach>
	<br>
	<c:forEach var="x" begin="5" end="15" step="5">
		<c:out value="${x }"></c:out>
	</c:forEach>
</body>
</html>