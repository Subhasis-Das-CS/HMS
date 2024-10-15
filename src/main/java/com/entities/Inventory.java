package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="inventory")
public class Inventory {
	
	@Id
	private int id;
	private String med_name;
	private String med_brand;
	private String med_stock;
	private String med_sold;
	private String med_price;
	
	
	public Inventory() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Inventory(int id, String med_name, String med_brand, String med_stock, String med_sold, String med_price) {
		super();
		this.id = id;
		this.med_name = med_name;
		this.med_brand = med_brand;
		this.med_stock = med_stock;
		this.med_sold = med_sold;
		this.med_price=med_price;
	}


	public String getMed_price() {
		return med_price;
	}


	public void setMed_price(String med_price) {
		this.med_price = med_price;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getMed_name() {
		return med_name;
	}


	public void setMed_name(String med_name) {
		this.med_name = med_name;
	}


	public String getMed_brand() {
		return med_brand;
	}


	public void setMed_brand(String med_brand) {
		this.med_brand = med_brand;
	}


	public String getMed_stock() {
		return med_stock;
	}


	public void setMed_stock(String med_stock) {
		this.med_stock = med_stock;
	}


	public String getMed_sold() {
		return med_sold;
	}


	public void setMed_sold(String med_sold) {
		this.med_sold = med_sold;
	}
	 
	
	
	
	
	

}
