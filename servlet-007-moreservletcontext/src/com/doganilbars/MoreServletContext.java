package com.doganilbars;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MoreServletContext extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext servletContext = getServletContext();
		System.out.println(servletContext.getRealPath("/test.txt"));
		System.out.println(servletContext.getContextPath());
		System.out.println(servletContext.getServletContextName());

		InputStream inputStream = servletContext.getResourceAsStream("/test.txt");
		int content;
		ServletOutputStream os = resp.getOutputStream();
		while ((content = inputStream.read()) != -1) {
			System.out.print((char) content);
			os.write(content);
		}
	}

}
