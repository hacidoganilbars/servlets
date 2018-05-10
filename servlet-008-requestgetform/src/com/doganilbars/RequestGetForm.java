package com.doganilbars;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestGetForm extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String gender = req.getParameter("gender");
		String maritalStatus = req.getParameter("maritalStatus");
		String[] language = req.getParameterValues("lang");

		PrintWriter pw = resp.getWriter();

		pw.print("<html lang=\"utf-8\"><head><meta charset=\"utf-8\"><head><body>");
		pw.print(gender + " " + firstName + " " + lastName + " ");
		pw.print(maritalStatus + " ");
		if (language != null) {
			for (String lang : language) {
				pw.print(lang + " ");
			}
		}
		pw.println("</body></html>");

		Enumeration<String> paramNames = req.getParameterNames();
		while (paramNames.hasMoreElements()) {
			String paramName = paramNames.nextElement();
			System.out.println(paramName);
		}

		Map<String, String[]> parameterMap = req.getParameterMap();
		for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
			System.out.println(entry.getKey() + " " + Arrays.asList(entry.getValue()));
		}

	}

}
