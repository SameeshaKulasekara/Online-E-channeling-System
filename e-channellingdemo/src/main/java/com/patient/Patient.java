package com.patient;

public class Patient {
	private String id;
    private String name;
    private String hospital;
    private String province;
    private String city;
    
	public Patient(String id,String name, String hospital, String province, String city) {
		this.id = id;
		this.name = name;
		this.hospital = hospital;
		this.province = province;
		this.city = city;
	}

	
	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getHospital() {
		return hospital;
	}

	public String getProvince() {
		return province;
	}

	public String getCity() {
		return city;
	}

	
	
    
    
}
