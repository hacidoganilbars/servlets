package com.doganilbars;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseRedirect extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int status = HttpServletResponse.SC_MOVED_TEMPORARILY; // 301

		if (status == HttpServletResponse.SC_OK) { // 200
			// /....
		} else {
			resp.sendRedirect("https://github.com/hacidoganilbars");
		}

	}
}