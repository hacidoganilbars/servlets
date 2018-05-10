<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ page import="java.time.LocalTime"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<body>
<!-- declaration time 1   değişken tanımları oluşturulan servlet sınıfının içinde bir field olarak tanımlanır-->
	<!-- scriptlet time2 yapılan değişken tanımları oluşturulan servlet sınıfının service methodu içinde tanımlanır, yerel değişken olur-->
	<%!LocalTime time1 = LocalTime.now();%>
	<%
		LocalTime time2 = LocalTime.now();
	%>

	<p><%="Time 1: " + time1%></p>
	<p><%="Time 2: " + time2%></p>
</body>
</body>

</html>