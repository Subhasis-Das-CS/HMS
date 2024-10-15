package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="staff")
public class Staff {

	@Id
	private int id;
	private String s_name;
	private String designation;
	private String age;
	private String p_name;
	
	
	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Staff(int id, String s_name, String designation, String age, String p_name) {
		super();
		this.id = id;
		this.s_name = s_name;
		this.designation = designation;
		this.age = age;
		this.p_name = p_name;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getS_name() {
		return s_name;
	}


	public void setS_name(String s_name) {
		this.s_name = s_name;
	}


	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getP_name() {
		return p_name;
	}


	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	
	
	

	
}
