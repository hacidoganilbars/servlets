package com.doganilbars;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseCookieMethods extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Cookie userNameCookie = new Cookie("username", "hd.ilbars");
		userNameCookie.setMaxAge(5);

		Cookie passwordCookie = new Cookie("password", "123456");
		resp.addHeader("Set-Cookie", "testName=testValue");
		resp.addCookie(userNameCookie);
		resp.addCookie(passwordCookie);

		Cookie[] cookies = req.getCookies();

		if (cookies != null) {
			for (Cookie cookie : cookies) {
				System.out.println(cookie.getName() + " " + cookie.getValue());
			}
		}

	}
}
