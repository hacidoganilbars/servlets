<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>implicitObject</title>
</head>
<body>
	${employee.name }
	<br> ${requestScope.employee.name }
	<br> ${sessionScope.employee.name }
	<br> ${requestScope["test.attribute"].name }
	<br> ${str}
	<br> ${requestScope.str}
	<br> ${sessionScope.str}
	<br> ${applicationScope.str }
	<br> ${cookie.userName.value }

</body>
</html>