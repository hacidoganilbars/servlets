package com.doganilbars;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class NestedClassicTagHandler extends TagSupport {

	private static final long serialVersionUID = 1L;

	private int tagLevel = 0;

	@Override
	public int doStartTag() throws JspException {

		tagLevel = 0;
		Tag parent = getParent();
		while (parent != null) {
			parent = parent.getParent();
			tagLevel++;
		}
		try {
			pageContext.getOut().println("<br>Nested level: " + tagLevel);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return EVAL_BODY_INCLUDE;
	}

}
