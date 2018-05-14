<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="mySimpleTagURI" prefix="myTags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>simpleTag3.jsp</title>
</head>
<body>

	<myTags:mySimpleTagName3 myName="Hacı Doğan">
		<p>This is body.</p>
	</myTags:mySimpleTagName3>

	<c:set var="nameAttribute" value="myNameAttribute" />
	<c:set var="bodyAttribute" value="myBodyAttribute" />

	<myTags:mySimpleTagName3 myName="${nameAttribute}">
		<p>${bodyAttribute}</p>
	</myTags:mySimpleTagName3>

</body>
</html>