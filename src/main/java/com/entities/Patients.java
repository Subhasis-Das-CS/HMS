package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patients")
public class Patients {
	
	@Id
private int id;
private String p_name;
private int age;
private String phone_no;
private String doc;
private int h_no;
private String district;
private String city;
private String state;
private String pin;
private String gender;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getp_name() {
	return p_name;
}
public void setp_name(String p_name) {
	this.p_name = p_name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getPhone_no() {
	return phone_no;
}
public void setPhone_no(String phone_no) {
	this.phone_no = phone_no;
}
public String getDoc() {
	return doc;
}
public void setDoc(String doc) {
	this.doc = doc;
}
public int getH_no() {
	return h_no;
}
public void setH_no(int h_no) {
	this.h_no = h_no;
}
public String getDistrict() {
	return district;
}
public void setDistrict(String district) {
	this.district = district;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getPin() {
	return pin;
}
public void setPin(String pin) {
	this.pin = pin;
}


public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Patients() {
	super();
	// TODO Auto-generated constructor stub
}
public Patients(int id, String p_name, int age, String phone_no, String doc, int h_no, String district, String city,
		String state, String pin, String gender) {
	super();
	this.id = id;
	this.p_name = p_name;
	this.age = age;
	this.phone_no = phone_no;
	this.doc = doc;
	this.h_no = h_no;
	this.district = district;
	this.city = city;
	this.state = state;
	this.pin = pin;
	this.gender=gender;
}





}
