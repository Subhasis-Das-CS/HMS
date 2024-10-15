package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="appointments")
public class Appointment {
	@Id
	private int id;
	private String p_name;
	private String  phone ;
	private String  doctor ;
	private String a_date ;;
	private String a_time ;
	private String reason;
	public Appointment(int id, String p_name, String phone, String doctor, String a_date, String a_time,
			String reason) {
		super();
		this.id = id;
		this.p_name = p_name;
		this.phone = phone;
		this.doctor = doctor;
		this.a_date = a_date;
		this.a_time = a_time;
		this.reason = reason;
	}
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getA_date() {
		return a_date;
	}
	public void setA_date(String a_date) {
		this.a_date = a_date;
	}
	public String getA_time() {
		return a_time;
	}
	public void setA_time(String a_time) {
		this.a_time = a_time;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
	
}
