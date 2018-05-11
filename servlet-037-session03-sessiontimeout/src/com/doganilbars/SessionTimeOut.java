package com.doganilbars;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionTimeOut extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		Integer maxInactiveInterval = session.getMaxInactiveInterval();
		System.out.println("Default timeout: " + maxInactiveInterval);

		session.setMaxInactiveInterval(10);// 10saniye
		maxInactiveInterval = session.getMaxInactiveInterval();
		System.out.println("updated timeout: " + maxInactiveInterval);

		session.setAttribute("name", "ilbars");
		String name = (String) session.getAttribute("name");
		System.out.println(name);

		name = (String) session.getAttribute("name");
		System.out.println(name);

		PrintWriter pw = resp.getWriter();
		pw.print("<a href=sessiontimeoutcheck>check me </a>");
	}
}
