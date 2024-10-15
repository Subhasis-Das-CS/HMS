package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="prescriptions")
public class Prescription {
	@Id
	private int id;
	private String p_name;
	private String p_doctor;
	private String medication;
	private String dosage;
	private String frequency;
	private String notes;
	
	
	public Prescription() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Prescription(int id, String p_name, String p_doctor, String medication, String dosage, String frequency,
			String notes) {
		super();
		this.id = id;
		this.p_name = p_name;
		this.p_doctor = p_doctor;
		this.medication = medication;
		this.dosage = dosage;
		this.frequency = frequency;
		this.notes = notes;
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


	public String getP_doctor() {
		return p_doctor;
	}


	public void setP_doctor(String p_doctor) {
		this.p_doctor = p_doctor;
	}


	public String getMedication() {
		return medication;
	}


	public void setMedication(String medication) {
		this.medication = medication;
	}


	public String getDosage() {
		return dosage;
	}


	public void setDosage(String dosage) {
		this.dosage = dosage;
	}


	public String getFrequency() {
		return frequency;
	}


	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}


	public String getNotes() {
		return notes;
	}


	public void setNotes(String notes) {
		this.notes = notes;
	}

	
	

}
