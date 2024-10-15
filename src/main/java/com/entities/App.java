package com.entities;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patients")
public class App {
	
	@Id
private int id;
private String s;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getS() {
	return s;
}
public void setS(String s) {
	this.s = s;
}
public App(int id, String s) {
	super();
	this.id = id;
	this.s = s;
}
public App() {
	super();
	// TODO Auto-generated constructor stub
}


}
