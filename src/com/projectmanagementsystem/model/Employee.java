package com.projectmanagementsystem.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Employee {

	private int id;
	
														

	private int idCard;
	
	@NotEmpty
	@Size(max=20,min=6)
	@Pattern(regexp = "[^0-9]+", message = "Your name can not contain a number")
	private String name;
	
	@NotEmpty
	@Size(max=20,min=6)
	@Pattern(regexp = "[^0-9]+", message = "Your surname can not contain a number")
	private String surname;
	
	@NotEmpty
	@Size(max=20,min=6)
	private String position;

	public Employee(int id, int idCard, String name, String surname, String position) {
		super();
		this.id = id;
		this.idCard = idCard;
		this.name = name;
		this.surname = surname;
		this.position = position;
	}

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdCard() {
		return idCard;
	}

	public void setIdCard(int idCard) {
		this.idCard = idCard;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

}
