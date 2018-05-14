<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fnjoin.jsp</title>
</head>
<body>
	<%
		String array[] = { "test1", "test2", "test3" };
		request.setAttribute("myArray", array);
	%>

	${fn:join(myArray,';') }

	<!-- 	<function-signature>java.lang.String join(java.lang.String[], java.lang.String)</function-signature> -->
</body>
</html>