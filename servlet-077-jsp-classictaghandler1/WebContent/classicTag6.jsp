<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="myClassicTagURI" prefix="myClassicTags6"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello ClassicTag6</title>
</head>
<body>

	<%
		List<String> testList = new ArrayList<String>();
		testList.add("element1");
		testList.add("element2");
		testList.add("element3");
		testList.add("element4");
		testList.add("element5");

		request.setAttribute("testList", testList);
	%>
	<myClassicTags6:myClassicTagName6 myList="${testList }">
		<p>value : ${element }</p>
	</myClassicTags6:myClassicTagName6>

	<p>after classic tag works</p>
</body>
</html>