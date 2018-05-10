package com.doganilbars;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetRequestAttribute extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String attribute = (String) req.getAttribute("requestAttribute");
		System.out.println("request attribute" + attribute);

		// request objesine attribute eklenebilir. request attribute sadece
		// ilgili request'e aittir.

		// ayni browserda RequestAttribute(/requestattribute) calistirdiktan
		// sonra , GetRequestAttribute(/getrequestattribute) url'ini
		// calistirdigimizda null deger donecektir.
	}

}
