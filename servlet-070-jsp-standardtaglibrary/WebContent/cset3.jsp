<%@page import="com.doganilbars.model.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cset3.jsp</title>
</head>
<body>
	<%
		Person person = new Person();
		request.setAttribute("myPerson", person);
	%>

	<c:set target="${myPerson }" property="name" value="Hacı Doğan" />
	<c:set target="${myPerson }" property="surname" value="İlbars" />
	<c:set target="${myPerson }" property="year" value="1987" />

	<c:out value="${myPerson.name }" />
	<c:out value="${myPerson.surname }" />
	<c:out value="${myPerson.year }" />
	
	<!-- target alani null olmamalidir! Bu durumda calisma zamaninda exception firlatir. -->
	
	<%--
	<c:set target="${thisIsNull}" property="thereIsNoPropery" value="javax.servlet.jsp.JspTagException"></c:set>
	 --%>
	 
	  <!--target null olmasa da eger property yoksa yine calisma zamaninda exception firlatilir. -->
	 
	 <%--
	 <c:set target="${myperson}" property="thereIsNoPropery" value="javax.servlet.jsp.JspTagException"></c:set>
	  --%>
</body>
</html>