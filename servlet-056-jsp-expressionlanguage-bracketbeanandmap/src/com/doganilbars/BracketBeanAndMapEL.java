package com.doganilbars;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doganilbars.model.Department;
import com.doganilbars.model.Employee;

public class BracketBeanAndMapEL extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Department department = new Department(100, "Software Department");
		Employee employee = new Employee(1, "Hacý Doðan Ýlbars", department);

		req.setAttribute("myemployee", employee);

		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("key1", "value1");
		map.put("key2", "value2");
		map.put("key3", "value3");
		
		req.setAttribute("mymap", map);

		RequestDispatcher view = req.getRequestDispatcher("expresslang08/bracketBeanAndMapEL.jsp");
		view.forward(req, resp);
	}
}
