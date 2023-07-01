package com.appointment;

public class Patient {
	private int appoinment_ID;
	private String patient_name;
	private int patient_age;
    private String nic;
	private String guardian;
    private String address;
    private String telephone;
    private String email;
    private String password;
    private String gender;
    private String doctor;
    
	public Patient(int appoinment_ID, String patient_name, int patient_age, String nic, String guardian,
			String address, String telephone, String email, String password, String gender, String doctor) {
		this.appoinment_ID = appoinment_ID;
		this.patient_name = patient_name;
		this.patient_age = patient_age;
		this.nic = nic;
		this.guardian = guardian;
		this.address = address;
		this.telephone = telephone;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.doctor = doctor;
	}
	
	public int getAppoinment_ID() {
		return appoinment_ID;
	}
	
	public String getPatient_name() {
		return patient_name;
	}
	
	
	public int getPatient_age() {
		return patient_age;
	}
	
	public String getNic() {
		return nic;
	}
	
	public String getGuardian() {
		return guardian;
	}
	
	public String getAddress() {
		return address;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getDoctor() {
		return doctor;
	}
	
	
}
