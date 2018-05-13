<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Bu uc yontem de ayni isi yapar! dynamic inclusion 
	Bir JSP Sayfasinda dynamic inclusion ile servlet'i include edebiliriz.
	-->
	<p>##### rd.include #####</p>
	<%
		RequestDispatcher rd = request.getRequestDispatcher("/dynamicIncludeMe");
		rd.include(request, response);
	%>
	<p>##### pageContext.include #####</p>
	<%
		pageContext.include("/dynamicIncludeMe");
	%>

	<p>##### jsp include action #####</p>
	<jsp:include page="/dynamicIncludeMe"></jsp:include>

</body>
</html>