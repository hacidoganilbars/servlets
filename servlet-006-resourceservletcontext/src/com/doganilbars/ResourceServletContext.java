package com.doganilbars;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResourceServletContext extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ServletContext context = getServletContext();

		InputStream inputStream = context.getResourceAsStream("/WEB-INF/myproperties.properties");

		Properties prop = new Properties();
		prop.load(inputStream);

		System.out.println(prop.get("name"));
		System.out.println(prop.get("surname"));

		InputStream inputStream2 = context.getResourceAsStream("/test.txt");
		int content;

		ServletOutputStream servletOutputStream = resp.getOutputStream();

		while ((content = inputStream2.read()) != -1) {
			System.out.print((char) content);
			servletOutputStream.write(content);
		}
		System.out.println();

		URL url = context.getResource("/test.txt");
		InputStream inputStream3 = url.openStream();

		int content2;
		while ((content2 = inputStream3.read()) != -1) {
			System.out.print((char) content2);
		}

	}

}
