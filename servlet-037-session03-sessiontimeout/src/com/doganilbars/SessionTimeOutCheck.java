package com.doganilbars;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionTimeOutCheck extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("name");
		System.out.println("session time out check: " + name);
		// bu sesssion attribute SessionTimeOut servlet'inde eklendi. 10 saniye
		// sonra session timeout olur ve bu attribute e ulasim saglanamaz.
	}

}
