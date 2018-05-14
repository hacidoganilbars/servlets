<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="mySimpleTagURI" prefix="myTags6"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>simpleTag6.jsp</title>
</head>
<body>
	<p>Before simple tag call</p>
	<myTags6:mySimpleTagName6>
		<p>simple tag body</p>
	</myTags6:mySimpleTagName6>
	<p>after simple tag call. not works !</p>
</body>
</html>