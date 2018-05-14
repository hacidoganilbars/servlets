<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fnsplit.jsp</title>
</head>
<body>
	<%
		String splitIt = "split1,split2,split3";
		request.setAttribute("splitIt", splitIt);
	%>

	<c:forEach var="x" items="${fn:split(splitIt,',') }">
		<c:out value="${x}"></c:out><br>
	</c:forEach>

	<!-- 	<function-signature>java.lang.String[] split(java.lang.String, java.lang.String)</function-signature> -->
</body>
</html>