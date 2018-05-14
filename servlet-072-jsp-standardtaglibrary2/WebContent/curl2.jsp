<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>curl2.jsp</title>
</head>
<body>
	<c:set var="firstName" value="Hacı Doğan" />
	<c:set var="lastName" value="İlbars" />

	<a href='<c:url value="encodeMe2.jsp?name=${firstName }&surname=${lastName }" />'>Click
		Here</a>



	<a
		href='<c:url value="encodeMe2.jsp">
	<c:param name="name" value="Hacı Doğan" />
	<c:param name="surname" value="İlbars" />
		</c:url>'>Click
		Here</a>
</body>
</html>