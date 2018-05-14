<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cforeach2.jsp</title>
</head>
<body>
	<%
		int numbers[] = { 5, 10, 15, 20, 25, 30, 35 };
		request.setAttribute("numbersAttribute", numbers);
	%>

	<c:forEach var="number" items="${numbersAttribute }">
		<c:out value="${number }"></c:out>
	</c:forEach>
	<br>
	<c:forEach var="number" items="${numbersAttribute }"
		varStatus="loopTagStatus">
		index: <c:out value="${loopTagStatus.index }" />
		<c:out value="${number }" />
		<br>
	</c:forEach>
</body>
</html>