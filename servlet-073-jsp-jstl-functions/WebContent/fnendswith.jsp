<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fnendswith.jsp</title>
</head>
<body>
	<c:set var="myAttribute" value="Hacı Doğan İlbars" />
	<c:if test="${fn:endsWith(myAttribute,'bars') }">
		<p>String ends with bars</p>
	</c:if>
	

<!-- <function-signature>boolean endsWith(java.lang.String, java.lang.String)</function-signature> -->

</body>
</html>