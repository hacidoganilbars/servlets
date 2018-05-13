<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cset.jsp</title>
</head>
<body>
	<!-- scope zorunlu degildir varsayilan olarak page scope kullanilir. -->
	<c:set var="mySessionAttribute" scope="session"
		value="my session value" />
	<c:set var="myRequestAttribute" scope="request">my request value</c:set>

	<c:out value="${mySessionAttribute }" />
	<br>
	<c:out value="${myRequestAttribute }" />

</body>
</html>