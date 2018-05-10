package com.doganilbars.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doganilbars.model.People;

public class RequestController1 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		People people1 = new People("Hacý Doðan", "Ýlbars", "Bay");
		People people2 = new People("Sýrrý Musa", "Ýlbars", "Bay");
		People people3 = new People("Ümit Turan", "Dal", "Bay");
		People people4 = new People("Ýbrahim", "Köksal", "Bay");

		List<People> peList = new ArrayList<People>();
		peList.add(people1);
		peList.add(people2);
		peList.add(people3);
		peList.add(people4);

		req.setAttribute("peopleList", peList);

		ServletContext servletContext = req.getServletContext();

		// RequestDispatcher dispatcher = context
		// .getRequestDispatcher("requestattribute/requestdispatcher.jsp");
		// #### / ile baslamalidir!

		RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/requestattribute/requestdispatcher.jsp");

		// RequestDispatcher objesi ServletContext (context) uzerinden elde
		// ediliyorsa bu durumda absolute path kullanilmalidir.
		// Yani / ile baslamalidir!
		
		dispatcher.forward(req, resp); 
	}
}
