<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.doganilbars.model.People"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>RequestDispatcher</title>
</head>
<body>
	<h1>RequestDispatcher</h1>
	<%
		List<People> pList = (ArrayList<People>) request.getAttribute("peopleList");
	%>


	<table width="300px">
		<%
			for (People person : pList) {
		%>
		<tr>
			<td><%=person.getGender()%></td>
			<td><%=person.getFirstName()%></td>
			<td><%=person.getLastName()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>