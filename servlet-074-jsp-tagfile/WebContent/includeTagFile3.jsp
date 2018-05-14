<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="myTag3" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>includeTagFile3.jsp</title>
</head>
<body>
	<%
		request.setAttribute("attribute", "attribute value");
	%>

	<%-- header3.tag dosyasi icerisinde <jsp:doBody/> Standard Action'i kullanildigi icin 
	body icerisi calisacaktir. Aksi durumda body icerisi calismaz.
	
	body-content="scriptless" oldugu icin Expression Language degerlendirilir.(evaluated)
	
	body icerisinde hic bir durumda JSP Expression kullanilamaz.
	--%>

	<myTag3:header3 title="header 3 tittle">
hello body
${attribute }
<%--
	 	<%="Exception !" %>
	 	 --%>
	</myTag3:header3>
</body>
</html>