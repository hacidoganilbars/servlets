<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>dotOperatorEL.jsp</title>
</head>
<body>

  <!-- dot (.) operatoru ile hem Map'e hem de bean property alanlarina ulasabiliriz! -->
${mymap.key1 }
${mymap.key2 }
${mymap.key3 }

 <!--mymap var , thereIsNoKey diye bir key yok! Ekrana bir sey yazmaz , hata vermez!  -->
${mymap.thereIsNoKey }

 <!--thereIsNoMap ve thereIsNoKey yok ! Ekrana bir sey yazmaz , hata vermez!  -->
${thereIsNoMap.thereIsNoKey }
</body>
</html>