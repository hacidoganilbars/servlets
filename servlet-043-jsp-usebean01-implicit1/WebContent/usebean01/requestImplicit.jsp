<%@page import="com.doganilbars.model.Person"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>requestImplicit.jsp</title>
</head>
<body>
	<%
		Person person = (Person) request.getAttribute("myPerson");
	%>

	<%=person.getName()%>
	<%=person.getSurname()%>
	<%=person.getYear()%>
</body>
</html>