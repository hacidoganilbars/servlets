package com.doganilbars;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doganilbars.model.Person;

public class UseBeanProperty extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Person person1 = new Person("Hacý Doðan", "Ýlbars", 30);
		req.setAttribute("myperson", person1);

		RequestDispatcher view = req.getRequestDispatcher("usebean02/useBean.jsp");
		view.forward(req, resp);
	}
}
