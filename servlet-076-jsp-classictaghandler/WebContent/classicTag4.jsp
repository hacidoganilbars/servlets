<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="myClassicTagURI" prefix="myClassicTags4"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello ClassicTag4</title>
</head>
<body>

	<myClassicTags4:myClassicTagName4>
         <p>This is classic tag body!</p>
    </myClassicTags4:myClassicTagName4>

	<p>THIS IS SKIPPED! doEndTag return SKIP_PAGE; oldugu icin bu kisim
		calismayacaktir!</p>
</body>
</html>