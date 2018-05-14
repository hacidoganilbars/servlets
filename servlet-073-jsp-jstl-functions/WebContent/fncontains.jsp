<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fnconteins.jsp</title>
</head>
<body>
	<c:set var="myAttribute" value="Hacı Doğan ilbars" />
	<c:if test="${fn:contains(myAttribute,'Doğan') }">
		<p>Founded! Doğan</p>
	</c:if>

<!-- 	<function> <description> Tests if an input -->
<!-- 	string contains the specified substring. </description> <name>contains</name> <function-class>org.apache.taglibs.standard.functions.Functions</function-class> -->
<!-- 	<function-signature>boolean -->
<%-- 	contains(java.lang.String, java.lang.String)</function-signature> <example> <c:if --%>
<%-- 		test="${fn:contains(name, searchString)}" /></example> </function> --%>
</body>
</html>