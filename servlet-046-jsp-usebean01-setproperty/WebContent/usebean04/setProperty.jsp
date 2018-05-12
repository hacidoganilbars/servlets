<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>setProperty.jsp</title>
</head>
<body>

	<%-- jsp:useBean action'i ilgili id ye sahip request bean attribute olmadigi durumda 
	yeni bir obje olusturur.--%>
	<jsp:useBean id="thereIsNoBean" class="com.doganilbars.model.Person"
		scope="request"></jsp:useBean>

	<%-- jsp:setProperty action'i ile property alanlarina deger atamasinda bulunabiliriz.--%>
	<jsp:setProperty property="name" name="thereIsNoBean"
		value="Ümit Turan" />
	<jsp:setProperty property="surname" name="thereIsNoBean" value="Dal" />
	<jsp:setProperty property="year" name="thereIsNoBean" value="42" />

	<%--jsp:setProperty ile atadigimiz bu degerlere ulasalim. --%>
	<jsp:getProperty property="name" name="thereIsNoBean" />
	<jsp:getProperty property="surname" name="thereIsNoBean" />
	<jsp:getProperty property="year" name="thereIsNoBean" />
</body>
</html>