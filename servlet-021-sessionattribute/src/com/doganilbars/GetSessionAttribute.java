package com.doganilbars;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetSessionAttribute extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		String attribute = (String) session.getAttribute("sessionAttribute");

		System.out.println("Session Attribute: " + attribute);

		// test edebilmek icin farkli 2 browser kullanabiliriz.
		// ayni tarayicida ayni session da oldugumuz icin session attribute e
		// ulasabiliriz.
		// farkli tarayici uzerinde denedigimizde farkli session oldugu icin
		// null degeri donecektir.
	}

}
