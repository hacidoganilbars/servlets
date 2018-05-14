<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fntrim.jsp</title>
</head>
<body>
	<c:set var="string1" value="     there are whitespaces     " />
	<p>string1 Length: ${fn:length(string1) }</p>

	<c:set var="string2" value="${fn:trim(string1) }" />
	<p>string2 Length: ${fn:length(string2) }</p>

	<!-- 	<function-signature>java.lang.String trim(java.lang.String)</function-signature> -->

</body>
</html>