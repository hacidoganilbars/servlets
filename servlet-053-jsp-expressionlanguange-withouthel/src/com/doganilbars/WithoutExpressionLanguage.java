package com.doganilbars;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doganilbars.model.Department;
import com.doganilbars.model.Employee;

public class WithoutExpressionLanguage extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Department department = new Department(100, "Software Department");
		Employee employee = new Employee(1, "Hacý Doðan Ýlbars", department);
		req.setAttribute("myemployee", employee);

		RequestDispatcher view = req.getRequestDispatcher("explang/withoutEL.jsp");
		view.forward(req, resp);
	}
}
