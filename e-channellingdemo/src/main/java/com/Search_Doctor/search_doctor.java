package com.Search_Doctor;

public class search_doctor {
	private String Doctor_id;
	private String Doctor_name;
	private String specialization ;
	private String hospital;
	private String date;
	
	
	public search_doctor(String doctor_id, String doctor_name, String specialization, String hospital, String date) {
		Doctor_id = doctor_id;
		Doctor_name = doctor_name;
		this.specialization = specialization;
		this.hospital = hospital;
		this.date = date;
	}
	
	public String getDoctor_id() {
		return Doctor_id;
	}
	public String getDoctor_name() {
		return Doctor_name;
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
	

	
	


