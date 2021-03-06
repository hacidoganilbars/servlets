package com.doganilbars;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTagHandler4 extends TagSupport {

	private static final long serialVersionUID = 1L;

	@Override
	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.println("Hello Classic Tag Handler4 With Body!");
		} catch (IOException e) {
			e.printStackTrace();
		}
		// SKIP_BODY yerine EVAL_BODY_INCLUDE kullandigimizda
		// Body degerlendirmeye alinir!.
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.println("After Body!");

		} catch (IOException e) {
			e.printStackTrace();
		}
		// sayfanin geri kalanini calistir.
		// return EVAL_PAGE;

		// sayfanin geri kalani calismaz! Simple Tag icin SkipPageException a
		// karsilik gelir.
		return SKIP_PAGE;
	}
}
