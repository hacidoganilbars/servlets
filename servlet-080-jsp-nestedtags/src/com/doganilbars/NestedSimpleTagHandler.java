package com.doganilbars;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class NestedSimpleTagHandler extends SimpleTagSupport {

	private int tagLevel = 0;

	@Override
	public void doTag() throws JspException, IOException {
		JspTag parent = getParent();
		while (parent != null) {
			parent = ((SimpleTagSupport) parent).getParent();
			tagLevel++;
		}
		getJspContext().getOut().print("<br>Nested Level: " + tagLevel);
		getJspBody().invoke(null);
	}
}
