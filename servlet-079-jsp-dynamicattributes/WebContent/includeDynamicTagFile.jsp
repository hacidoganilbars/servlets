<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="myTag" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DynamicAttributes TagFile</title>
</head>
<body>
	<p>Name&Surname</p>
	<myTag:dynamicTag name="Hacı Doğan" surname="İlbars" />
	<p>Address</p>
	<myTag:dynamicTag city="Ankara" country="Turkey" reqional="Asia" />
</body>
</html>