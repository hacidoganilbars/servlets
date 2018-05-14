<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="mySimpleTagURI" prefix="myTags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>simpleTag2.jsp</title>
</head>
<body>
	<c:set var="name" value="Hacı Doğan İlbars" />
	<myTags:mySimpleTagName2>
	Hello ${name }
	<%--
		<%="runtime exception"%>
		 --%>
	</myTags:mySimpleTagName2>
	<%--
		tld dosyasinda body-content scriptless olarak tanimli oldugu icin body icerisinde JSP Expression kullanamayiz.
		Expression Language ya da plain text kullanabiliriz.
		
		<body-content>scriptless</body-content>
		
	--%>
</body>
</html>