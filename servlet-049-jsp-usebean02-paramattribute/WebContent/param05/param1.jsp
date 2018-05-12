<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>param1.jsp</title>
</head>
<body>
	<jsp:useBean id="person1" class="com.doganilbars.model.Person">
		<jsp:setProperty name="person1" property="name"
			value='<%=request.getParameter("firstName")%>' />
		<jsp:setProperty name="person1" property="surname"
			value='<%=request.getParameter("lastName")%>' />
		<jsp:setProperty name="person1" property="year"
			value='<%=Integer.parseInt(request.getParameter("yearOfBirth"))%>' />
	</jsp:useBean>

	<jsp:getProperty property="name" name="person1" />
	<jsp:getProperty property="surname" name="person1" />
	<jsp:getProperty property="year" name="person1" />
</body>
</html>