package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctors")
public class Doctors {

	@Id
	private int id;
	private String d_name;
	private String age;
	private String dept;
	private String expe;
	
	public Doctors() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctors(int id, String d_name, String age, String dept, String expe) {
		super();
		this.id = id;
		this.d_name = d_name;
		this.age = age;
		this.dept = dept;
		this.expe = expe;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getExpe() {
		return expe;
	}

	public void setExpe(String expe) {
		this.expe = expe;
	}
	
	
	
	
}
