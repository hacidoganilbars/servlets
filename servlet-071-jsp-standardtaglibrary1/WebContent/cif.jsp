<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cif.jsp</title>
</head>
<body>

	<c:set var="result" scope="request" value="70"></c:set>
	<c:if test="${result>50 }">
		<p>
			You pass exam ! :
			<c:out value="${result }" />
		</p>
	</c:if>

	<c:set var="result2" scope="request" value="40" />
	<c:if test="${result2 lt 50 }">
		<p>
			You Failed !! :
			<c:out value="${result2 }" />
		</p>
	</c:if>

	<c:set var="myName" scope="request" value="Hacı Doğan İlbars" />
	<c:if test="${myName eq 'Hacı Doğan İlbars' }">
		<p>Hello(eq), ${myName }</p>
	</c:if>

	<c:if test="${myName=='Hacı Doğan İlbars' }">
		<p>Hello(==), ${myName }</p>
	</c:if>
</body>
</html>