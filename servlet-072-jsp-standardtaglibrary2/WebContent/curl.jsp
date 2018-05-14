<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>curl.jsp</title>
</head>
<body>

	<%
		String encodeUrl = response.encodeURL("encodeMe.jsp");
	%>
	<a href="<%=encodeUrl%>">Click Me!</a>

	<%-- 
		
	<c:url> otomatik olarak URL rewriting islemi yapacaktir.
	Eger cookie kapali olursa JSESSIONID url sonuna eklenecektir. -->
	
	--%>

	<a href='<c:url value="encodeMe.jsp"/>'>Click here</a>

	<%--Eger encodeURL metodu ya da <c:url> JSTL etiketi kullanilmazsa 
	cookie kapaliysa bu durumda JSESSIONID url sonuna eklenmez.. --%>

	<a href="encodeMe.jsp">Click here</a>

</body>
</html>