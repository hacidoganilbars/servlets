<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.doganilbars.model.People"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	<table style="width: 300px">
		<%
			for (People people : pList) {
		%>
		<tr>
			<td><%=people.getGender()%></td>
			<td><%=people.getFirstName()%></td>
			<td><%=people.getLastName()%></td>
		</tr>

		<%
			}
		%>
	</table>

</body>
</html>