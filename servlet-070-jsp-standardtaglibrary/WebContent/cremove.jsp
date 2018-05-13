<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cremove.jsp</title>
</head>
<body>
	<c:set var="myAttribute" scope="request"
		value="request scope attribute"></c:set>
	<c:set var="myAttribute" scope="page" value="page scope attribute"></c:set>
	<c:set var="myAttribute" scope="session"
		value="session scope attribute"></c:set>
	<c:set var="myAttribute" scope="application"
		value="application scope attribute"></c:set>

	<c:out value="${myAttribute }"></c:out>
	<br>
	<c:out value="${pageScope.myAttribute }"></c:out>
	<br>
	<c:out value="${requestScope.myAttribute }"></c:out>
	<br>
	<c:out value="${sessionScope.myAttribute }"></c:out>
	<br>
	<c:out value="${applicationScope.myAttribute }"></c:out>
	<br>

	<!-- scope belirtilmediginde tum scope alanlarindan ilgili attribute'leri siler. -->
	<c:remove var="myAttribute" />
	<p>myattribute is removed</p>
	<c:out value="${myAttribute }"></c:out>
	<br>
	<c:out value="${pageScope.myAttribute }"></c:out>
	<br>
	<c:out value="${requestScope.myAttribute }"></c:out>
	<br>
	<c:out value="${sessionScope.myAttribute }"></c:out>
	<br>
	<c:out value="${applicationScope.myAttribute }"></c:out>
	<br>
</body>
</html>