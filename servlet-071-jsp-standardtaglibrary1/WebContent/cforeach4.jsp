<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cforeach4.jsp</title>
</head>
<body>
	<%
		Map<String, String> myMap = new HashMap<String, String>();
		myMap.put("key1", "value1");
		myMap.put("key2", "value2");
		myMap.put("key3", "value3");
		myMap.put("key4", "value4");

		request.setAttribute("myMapAttribute", myMap);
	%>

	<c:forEach var="entry" items="${myMapAttribute }">

		<c:out value="${entry.key }" />
		<c:out value="${entry.value }"/>
		<br>
	</c:forEach>
</body>
</html>