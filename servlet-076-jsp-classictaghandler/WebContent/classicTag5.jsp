<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="myClassicTagURI" prefix="myClassicTags5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello ClassigTag5</title>
</head>
<body>

	<c:set var="name" value="Hacı Doğan İlbars" />
	
	<myClassicTags5:myClassicTagName5 myName="${name }">
		<p>This is classic tag body with attribute !</p>
	</myClassicTags5:myClassicTagName5>
	
</body>
</html>