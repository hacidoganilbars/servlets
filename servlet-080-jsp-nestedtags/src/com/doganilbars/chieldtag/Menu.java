package com.doganilbars.chieldtag;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class Menu extends TagSupport {

	private static final long serialVersionUID = 1L;

	private ArrayList<String> items;

	// dikkat edelim attribute setter metodu degil!
	// bu metot MenuItem sinifinda cagrilmaktadir.
	// Child parent'taki item degerini ArrayList'e ekliyoruz.
	// Boylelikle Parent Tag , Child Tag'in attribute degerine ulasabilir.
	public void addMenuItem(String item) {
		items.add(item);
	}

	@Override
	public int doStartTag() throws JspException {
		// classic tag larda instance variable'i resetlemeyi unutmayalim!
		items = new ArrayList<String>();
		// donus tipi EVAL_BODY_INCLUDE olmali ki Child Tag calissin.
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		try {
			pageContext.getOut().println("Menu Items Are: " + items);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

}
