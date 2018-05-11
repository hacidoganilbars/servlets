package com.doganilbars.context.attr;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SCAttributeListenMe extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ServletContext context = getServletContext();

		context.setAttribute("context attribute", "my context attribute");

		context.setAttribute("context attribute", "my new context attribute a");

		context.removeAttribute("context attribute");
	}
}
