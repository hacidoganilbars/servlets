package com.doganilbars;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTagHandler2 extends TagSupport {

	private static final long serialVersionUID = 1L;

	@Override
	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.println("Hello Classic Tag Handler2!");
		} catch (IOException e) {
			e.printStackTrace();
		}
		// Body degerlendirmeye alinmaz.
		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.println("doEndTag works!");
		} catch (IOException e) {
			e.printStackTrace();
		}

		// sayfanýn geri kalanýný çalýþtýr
		return EVAL_PAGE;
	}

}
