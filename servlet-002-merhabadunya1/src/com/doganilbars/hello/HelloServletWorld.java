package com.doganilbars.hello;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServletWorld extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter writer = response.getWriter();
		Date today = new Date();
		String message = "Hacý Doðan Ýlbars";

		writer.print("<html><body> <h1>" + message + "</h1>");
		writer.print("<p>today:" + today + "<p>");
		writer.print("<a href=	https://github.com/hacidoganilbars>mygithub</a>");
		writer.print("</body></html>");

	}
}
