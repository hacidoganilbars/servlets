package com.doganilbars.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doganilbars.model.People;

public class RequestController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		People people1 = new People("Hac� Do�an", "�lbars", "Bay");
		People people2 = new People("�smail", "Ko�ak", "Bay");
		People people3 = new People("G�khan", "G�ndo�du", "Bay");

		List<People> peopleList = new ArrayList<People>();
		peopleList.add(people1);
		peopleList.add(people2);
		peopleList.add(people3);

		req.setAttribute("peopleList", peopleList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("requestattribute/requestdispatcher.jsp");
		// RequestDispatcher objemizi ServletRequest objesi uzerinden elde ettigimzide
		// relative path kullanabiliriz.

		// WebContent dizini altinda requestattribute dizini olusturuldu.
		// requestdispatcher.jsp dosyasi bu requestattribute dizini altinda.
		dispatcher.forward(req, resp);

	}

}
