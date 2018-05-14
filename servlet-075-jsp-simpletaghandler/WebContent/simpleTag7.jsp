<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="mySimpleTagURI" prefix="myTags6"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>simpleTag7.jsp</title>
</head>
<body>
	<p>before include page</p>
	<jsp:include page="simpleTag6.jsp"></jsp:include>
	<p>after include page</p>
</body>
</html>