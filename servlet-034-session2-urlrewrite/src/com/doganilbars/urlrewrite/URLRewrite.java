package com.doganilbars.urlrewrite;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

public class URLRewrite extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		HttpSession session = req.getSession();
		session.setAttribute("name", "ilbars");
		// setAttribute metodu encodeURL metodundan once kullanilmalidir.

		PrintWriter out = resp.getWriter();
		String nonEncodedURL = "getsession";
		String encodedURL = resp.encodeUrl("getsession");

		/*
		 * //yukarýdaki encodURL yorum satýrýna getirilir ve bunlar açýlýrsa cookie
		 * kapalý olsa bile name deðerine ulaþýlýr
		 * 
		 * StringcontextPath=req.getContextPath(); String encodedUrl =
		 * resp.encodeURL(contextPath + "/getsession");
		 */

		// relative adresimizi

		out.println("<html>");
		out.println("<head>");
		out.println("<title>URL Rewriter</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("Giris - <a href=\"" + nonEncodedURL + "\"> Click Here</a>.");
		// out.println("Giris - <a href=\"" + encodedURL + "\"> Click Here</a>.");
		// link'ler HTTP GET olarak calisir.
		out.println("</body>");
		out.println("</html>");

	}
}
