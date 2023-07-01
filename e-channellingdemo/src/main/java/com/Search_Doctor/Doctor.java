package com.Search_Doctor;

public class Doctor {
	private String doctor_id;
	private String doctor_name;
	private String specialization ;
	private String hospital;
	private String date;
	public Doctor(String doctor_id, String doctor_name, String specialization, String hospital, String date) {
	
		this.doctor_id = doctor_id;
		this.doctor_name = doctor_name;
		this.specialization = specialization;
		this.hospital = hospital;
		this.date = date;
	}
	public String getDoctor_id() {
		return doctor_id;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public String getSpecialization() {
		return specialization;
	}
	public String getHospital() {
		return hospital;
	}
	public String getDate() {
		return date;
	}
}
