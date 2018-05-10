package com.doganilbars;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MoreResponseRedirect extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		resp.sendRedirect("redirectme.html");
		// WebContent altinda redirectMe.html dosyasi olusturduk.
		// Relative adress kullandigimizda WebContent i referans alacaktir.

		 resp.sendRedirect("/servlet017moreresponseredirect/redirectme.html");
		// absolute path / ile baslar. Bu durumda context path'i de yazmamiz gereklidir.

		System.out.println("Bu kýsým çalýþmayacaktýr!");
	}

}
