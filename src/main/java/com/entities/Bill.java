package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bills")
public class Bill {

@Id	
	private int id;
	private String p_name ;
	private String p_id;
	private String dos ;
	private String amount;
	private String ic;
	private String p_balance;
	private String isPaid;
	private String isDue;
	
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Bill(int id, String p_name, String p_id, String dos, String amount, String ic, String p_balance, String isPaid, String isDue) {
		super();
		this.id = id;
		this.p_name = p_name;
		this.p_id = p_id;
		this.dos = dos;
		this.amount = amount;
		this.ic = ic;
		this.p_balance = p_balance;
		this.isPaid=isPaid;
		this.isDue=isDue;
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

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getDos() {
		return dos;
	}

	public void setDos(String dos) {
		this.dos = dos;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getIc() {
		return ic;
	}

	public void setIc(String ic) {
		this.ic = ic;
	}

	public String getP_balance() {
		return p_balance;
	}

	public void setP_balance(String p_balance) {
		this.p_balance = p_balance;
	}

	public String getIsPaid() {
		return isPaid;
	}

	public void setIsPaid(String isPaid) {
		this.isPaid = isPaid;
	}

	public String getIsDue() {
		return isDue;
	}

	public void setIsDue(String isDue) {
		this.isDue = isDue;
	}
	
	
	
	
}
