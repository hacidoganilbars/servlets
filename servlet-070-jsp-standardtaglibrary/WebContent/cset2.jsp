<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cset2.jsp</title>
</head>
<body>
	<%
		Map myMap = new HashMap();
		request.setAttribute("myMapAttribute", myMap);
	%>
	<c:set target="${myMapAttribute }" property="key1" value="value1" />
	<c:set target="${myMapAttribute }" property="key2">value2</c:set>

	<c:out value="${myMapAttribute.key1 }" />
	<c:out value="${myMapAttribute.key2 }" />

	<!-- target alani null olmamalidir ! yoksa calisma zamaninda exception firlatir. -->

<%-- 	<c:set target="${thereIsNoMap }" property="exception" --%>
<%-- 		value="javax.servlet.jsp.JspTagException"></c:set> --%>
</body>
</html>