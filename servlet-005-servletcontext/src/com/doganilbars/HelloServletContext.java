package com.doganilbars;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServletContext extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ServletContext servletContext = getServletContext();
		ServletConfig servletConfig = getServletConfig();

		String email = servletContext.getInitParameter("email");
		String address = servletConfig.getServletContext().getInitParameter("address");
		String name = servletConfig.getInitParameter("name");
		String surname = servletConfig.getInitParameter("surname");

		PrintWriter pw = resp.getWriter();

		pw.print("<html><body>");
		pw.print(name + "  " + surname + "<br>");
		pw.print(email + "<br>");
		pw.print(address + "<br>");
		pw.print("</body></html>");

		System.out.println("Servlet Init Parameter Names");
		Enumeration<String> servletInitParams = servletConfig.getInitParameterNames();
		while (servletInitParams.hasMoreElements()) {
			System.out.println(servletInitParams.nextElement());
		}

		System.out.println("Context Init Parameter Names ");
		Enumeration<String> contextInitParams = servletContext.getInitParameterNames();
		while (contextInitParams.hasMoreElements()) {
			System.out.println(contextInitParams.nextElement());
		}
	}

}
