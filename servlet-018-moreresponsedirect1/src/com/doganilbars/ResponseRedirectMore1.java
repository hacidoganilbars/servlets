package com.doganilbars;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseRedirectMore1 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		resp.sendRedirect("redirectme1.html");
		
		PrintWriter pw=resp.getWriter();
		pw.println("java.lang.IllegalStateException");
		 pw.print("Cannot ss call sendRedirect() after the response has been committed");	
		 pw.flush();
		 pw.close();

		resp.sendRedirect("/moreresponsedirect1/redirectme1.html");

		System.out.println("Bu kýsým çalýþmayacaktýr");
	}

}
