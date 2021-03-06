package com.doganilbars;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BracketArrayAndListEL extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String strArray[] = { "str1", "str2", "str3" };
		req.setAttribute("myArray", strArray);

		List<String> list = new ArrayList<String>();
		list.add("list element1");
		list.add("list element2");
		req.setAttribute("myList", list);

		RequestDispatcher view = req.getRequestDispatcher("exprlang09/bracketArrayAndListEL.jsp");
		view.forward(req, resp);

	}
}
