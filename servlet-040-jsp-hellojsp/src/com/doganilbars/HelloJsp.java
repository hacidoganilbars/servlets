package com.doganilbars;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloJsp extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pw = resp.getWriter();

		String contextPath = req.getContextPath();

		pw.print("<html><body>");

		pw.print("<a href=" + contextPath + "/hello.jsp>" + "helloooooo" + "</a>");
		pw.print("</body></html>");

	}

}
