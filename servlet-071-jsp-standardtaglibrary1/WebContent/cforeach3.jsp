<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cforeach3.jsp</title>
</head>
<body>
	<%
		List<String> myList = new ArrayList<String>();
		myList.add("element1");
		myList.add("element2");
		myList.add("element3");
		myList.add("element4");

		request.setAttribute("myListAttribute", myList);
	%>

	<c:forEach var="element" items="${myListAttribute }">
		<c:out value="${element }" />
	</c:forEach>
</body>
</html>