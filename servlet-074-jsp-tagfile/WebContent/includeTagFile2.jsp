<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="myTag2" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>includeTagFile2.jsp</title>
</head>
<body>


	<!-- tag dosyasinda title attribute'u required durumda ! 
	Bu nedenle kullanilmazsa calisma zamaninda hata olur.
	varsayilan degeri required="false" 'tur.
	 -->

	<myTag2:header2 title="title attribute is required!" />

	<!--tag dosyasinda ,rtexprvalue attribute alani true oldugu icin EL kullanabiliriz.
	 varsayilan deger rtexprvalue="true"dur.
	  -->
	<%
		request.setAttribute("rtexprvalue", "my run time expression value");
	%>

	<!-- rtexprvalue="false" olursa burada Expression Language kullanamayiz. -->
	<myTag2:header2 title="${rtexprvalue }" />
</body>
</html>