//package com.doganilbars;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.doganilbars.model.Person;
//
//public class ParamAttribute extends HttpServlet {
//
//	private static final long serialVersionUID = 1L;
//
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//		Person person = new Person("Hac� Do�an", "�lbars", 1987);
//
//		req.setAttribute("myperson", person);
//
//		RequestDispatcher view = req.getRequestDispatcher("param05/param1.jsp");
//		view.forward(req, resp);
//	}
//
//}
