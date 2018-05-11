package com.doganilbars.request;

import java.util.Date;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

public class ServletRequestListenerImpl implements ServletRequestListener {

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("Request Initialized...");

		HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
		String servletPath = request.getServletPath();

		Date date = new Date();
		System.out.println(date + " " + servletPath);
	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {

		System.out.println("Request Destroyed..");
	}

}
