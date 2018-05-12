package com.doganilbars;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EvaluatedEL extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("key1", "value1");
		map.put("key2", "value2");
		map.put("key3", "value3");
		
		req.setAttribute("mymap", map);
		req.setAttribute("evaluatedString", "key1");
		
		String[] array = { "key2" };
		req.setAttribute("myarray", array);

		RequestDispatcher view = req.getRequestDispatcher("exprlang10/evaluated.jsp");
		view.forward(req, resp);
	}
}
