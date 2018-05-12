<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${myemployee.empId} ${myemployee.name }

	<%--
	
	${myemployee.thereIsNoProperty}
	eger myemployee beani varsa , eger ilgili property yoksa calisma zamaninda exception verir!
	javax.el.PropertyNotFoundException 
		
	 --%>

	<%--eger bean yoksa , property'i olsa da olmasa da hata vermez!. Ekrana bir sey yazmaz !--%>
	${thereIsNoBean.thereIsNoProperty }


	${myemployee.department.departmentName }
	${myemployee.department.departmentId }
</body>
</html>