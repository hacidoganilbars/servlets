<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fncontainsignorecase.jsp</title>
</head>
<body>
	<c:set var="myAttribute" value="Hacı Doğan İlbars" />
	<c:if test="${fn:containsIgnoreCase(myAttribute, 'DOĞAN') }">
		<p>Founded! DOĞAN</p>
	</c:if>

	<!-- 	<function-signature>boolean containsIgnoreCase(java.lang.String, java.lang.String)</function-signature> -->
</body>
</html>