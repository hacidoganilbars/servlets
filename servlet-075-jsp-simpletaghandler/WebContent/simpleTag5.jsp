<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="mySimpleTagURI" prefix="myTags5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>simpleTag5.jsp</title>
</head>
<body>

	<%
		List<String> testList = new ArrayList<String>();
		testList.add("element1");
		testList.add("element2");
		testList.add("element3");
		testList.add("element4");
		testList.add("element5");
		testList.add("element6");

		request.setAttribute("testList", testList);
	%>


	<myTags5:mySimpleTagName5 myList="${testList}">
		<p>${myAttribute}</p>
	</myTags5:mySimpleTagName5>
</body>
</html>