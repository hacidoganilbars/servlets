<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="myTag4" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>includeTagFile4.jsp</title>
</head>
<body>

	<%
		request.setAttribute("attribute", "attribute value");
	%>

	<!--header4.tag dosyasi icerisinde   tag body-content="tagdependent"  kullanildi.
	 bu durumda JSP Expression Language degerlendirilmez(not evaluated)
	 -->
	<myTag4:header4 title="header 4 title">
	hello body
	${attribute }
	<%="Hata vermez. body-content tagdependent oldugu icin bu kismi plain text olarak calistirir."%>
	</myTag4:header4>
</body>
</html>