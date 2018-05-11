package com.doganilbars.encoderedirect;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class URLRewriteSendRedirect extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String encodedRedirectURL = resp.encodeRedirectURL("encoderedirectme.html");
		resp.sendRedirect(encodedRedirectURL);

		// encodeRedirectURL metodu belirtilen URL adresini sendRedirect metodu
		// icin encoding islemi yapar. Eger encoding gerekli degilse(Cookie'ler
		// aktif se)
		// URL adresi aynen degismeden doner.
		//
		// Browser cookileri desteklemediginde(Cookiler kapali oldugunda)
		// sendRedirect metodunda kullanilan tum URL adresleri encodeRedirectURL
		// metodunu kullanmalidir.
		//
		// sendRedirect metodunda kullanilacak url adresi encoding yapilacagi
		// zaman encodeURL metodu yerine encodeRedirectURL adresi
		// kullanilmalidir.
	}
}
