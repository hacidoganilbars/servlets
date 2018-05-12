<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>abstractUseBeanType.jsp</title>
</head>
<body>

	<%--
	UseBeanType.java sinifimizda abstractperson isminde bir request attribute request scope'a ekledik.
	Employee IS-A AbstractPerson
	
	AbstractPerson person = new Employee(100, "Hacı Doğan", "İlbars", 1987);	
		req.setAttribute("abstractperson", person);
	
	 --%>
	<jsp:useBean id="abstractperson"
		type="com.doganilbars.model.AbstractPerson" scope="request"></jsp:useBean>

	<jsp:getProperty property="name" name="abstractperson" />
	<jsp:getProperty property="surname" name="abstractperson" />
	<jsp:getProperty property="year" name="abstractperson" />
</body>
</html>