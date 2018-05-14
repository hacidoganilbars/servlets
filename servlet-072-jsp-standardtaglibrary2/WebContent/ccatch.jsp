<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ccatch.jsp</title>
</head>
<body>
	<c:catch var="catchException">
		<%
			int x = 10 / 0;
		%>
	</c:catch>

	<c:if test="${catchException!=null }">
		<p>The exception is: ${catchException }</p>
		<p>There is an exception: ${catchException.message }</p>
	</c:if>
</body>
</html>