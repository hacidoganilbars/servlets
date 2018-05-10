package com.doganilbars;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletLifeCycle extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		System.out.println("Hello init() method");
		System.out.println("init() metodu ServletLifeCyle boyunca bir kez calisir.");
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// super.doGet(req, resp);

		PrintWriter writer = resp.getWriter();
		Date today = new Date();
		String message = "Hacý Doðan Ýlbars";

		writer.print("<html><body> <h1>" + message + "</h1>");
		writer.print("<p>today:" + today + "<p>");
		writer.print("<a href=	https://github.com/hacidoganilbars>hacidoganilbarsgithub</a>");
		writer.print("</body></html>");
	}

	@Override
	public void destroy() {
		System.out.println("####destroy");
	}

}
