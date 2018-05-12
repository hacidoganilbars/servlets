package com.doganilbars;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doganilbars.model.AbstractPerson;
import com.doganilbars.model.Employee;

public class UseBeanType extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AbstractPerson person = new Employee(100, "Hacý Doðan", "Ýlbars", 1987);

		req.setAttribute("abstractperson", person);

		RequestDispatcher view = req.getRequestDispatcher("usebean05/abstractUseBeanType.jsp");
		view.forward(req, resp);
	}
}
