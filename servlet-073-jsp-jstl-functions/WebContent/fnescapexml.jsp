<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fnescapexml</title>
</head>
<body>

	<!-- escapeXml kullanildiginda <b> </b> HTML olarak degerlendirilmez. -->
	
	<c:set var="string1" value="This <b>is second String.</b>" />

	<p>With escapeXml() Function:</p>

	<p>string (1) : ${fn:escapeXml(string1)}</p>

	<p>Without escapeXml() Function:</p>

	<p>string (1) : ${string1}</p>

	<!-- 	<function-signature>java.lang.String escapeXml(java.lang.String)</function-signature> -->
</body>
</html>