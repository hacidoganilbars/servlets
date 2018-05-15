package com.doganilbars.chieldtag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MenuItem extends TagSupport {

	private static final long serialVersionUID = 1L;

	// MenuItem Tag'i icin TLD dosyamizda itemValue attribute ekledik.
	private String itemValue;

	public void setItemValue(String itemValue) {
		this.itemValue = itemValue;
	}

	@Override
	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		Menu parent = (Menu) getParent();
		parent.addMenuItem(itemValue);
		return EVAL_PAGE;
	}

}
