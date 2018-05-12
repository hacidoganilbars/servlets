<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>setProperty.jsp</title>
</head>
<body>

	<%-- jsp:useBean action'i ilgili id ye sahip request bean attribute olmadigi durumda 
	yeni bir obje olusturur.--%>
	<jsp:useBean id="thereIsNoBean" class="com.doganilbars.model.Person"
		scope="request"></jsp:useBean>

	<%-- jsp:setProperty action'i ile property alanlarina deger atamasinda bulunabiliriz.--%>
	<jsp:setProperty property="name" name="thereIsNoBean" value="Elizabeth" />
	<jsp:setProperty property="surname" name="thereIsNoBean" value="Taylor" />
	<jsp:setProperty property="year" name="thereIsNoBean" value="18" />

	<%--jsp:setProperty ile atadigimiz bu degerlere ulasalim. --%>
	<jsp:getProperty property="name" name="thereIsNoBean" />
	<jsp:getProperty property="surname" name="thereIsNoBean" />
	<jsp:getProperty property="year" name="thereIsNoBean" />


	<%-- jsp:setProperty action'i jsp:useBean action i icinde ya da disinda kullanabiliriz. 
	jsp:useBean icinde kullandigimiz zaman eger yeni obje olusturulacaksa jsp:setProperty calisacaktir!
	jsp:useBean disinda kullandigimiz zaman obje olusturulsun ya da olusuturlmasin jsp:setProperty calisir.
	Bu durumda onceki property degerleri override edilir.
	--%>
	<jsp:useBean id="myperson" class="com.doganilbars.model.Person"
		scope="request">
		<jsp:setProperty property="name" name="myperson" value="Elizabeth" />
		<jsp:setProperty property="surname" name="myperson" value="Taylor" />
		<jsp:setProperty property="year" name="myperson" value="18" />
	</jsp:useBean>

	<%--myperson icin jsp:setProperty calismayaacktir! myperson degerine sahip Person objesi request scope'ta mevcut 
	Bu nedenle yeni obje olusturulmaz dolayisiyla jsp:useBean icindeki jsp:setProperty calismayacaktir. --%>
	<jsp:getProperty property="name" name="myperson" />
	<jsp:getProperty property="surname" name="myperson" />
	<jsp:getProperty property="year" name="myperson" />

</body>
</html>