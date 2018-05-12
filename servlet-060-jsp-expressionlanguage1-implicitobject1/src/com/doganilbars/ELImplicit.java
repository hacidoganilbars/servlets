package com.doganilbars;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doganilbars.model.Employee;

public class ELImplicit extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Employee employee = new Employee();
		employee.setName("request scope employee name");

		Employee employee2 = new Employee();
		employee2.setName("session scope employee name");

		req.setAttribute("employee", employee);
		req.setAttribute("test.attribute", employee);

		req.getSession().setAttribute("employee", employee2);

		String str1 = "request scope str1";
		String str2 = "session scope str2";
		String str3 = "context scope str3";

		req.setAttribute("str", str1);
		req.getSession().setAttribute("str", str2);
		getServletContext().setAttribute("str", str3);

		Cookie userNameCookie = new Cookie("userName", "ilbars");
		resp.addCookie(userNameCookie);

		RequestDispatcher view = req.getRequestDispatcher("implicitELO/implicitObject.jsp");
		view.forward(req, resp);
	}

}
