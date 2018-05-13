<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>dynamicinclude.jsp</title>
</head>
<body>
	<!-- Bu uc yontem de ayni isi yapar! dynamic inclusion -->

	<!-- 
	    request JSP implicit objesini kullanarak RequestDispatcher objesi elde edebiliriz.
	    include metodunu kullanarak dynamic inclusion islemini yapabiliriz
	 -->

	<%
		RequestDispatcher rd = request.getRequestDispatcher("includeMe.jsp");
		rd.include(request, response);
	%>

	<p>##### pageContext.include #####</p>

	<%
		pageContext.include("includeMe.jsp");
	%>

	<p>##### jsp include action #####</p>

	<jsp:include page="includeMe.jsp" />

</body>
</html>