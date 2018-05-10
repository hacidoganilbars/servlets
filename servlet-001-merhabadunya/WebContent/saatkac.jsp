<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf8"%>
	<%@ page import="java.time.LocalTime" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Saat Kaç?</title>
</head>
<body>
<h1>JSP Örneği</h1>
<!-- Expression -->
  Saat :<%= LocalTime.now() %>
</body>
</html>