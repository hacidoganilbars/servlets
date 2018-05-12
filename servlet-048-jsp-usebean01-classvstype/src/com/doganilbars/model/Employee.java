package com.doganilbars.model;

public class Employee extends AbstractPerson {

	private int emId;

	
	
	public Employee() {
		super();
	}

	public Employee(int emId, String name, String surname, int year) {
		super(name, surname, year);
		this.emId = emId;
	}

	public int getEmId() {
		return emId;
	}

	public void setEmId(int emId) {
		this.emId = emId;
	}

}
