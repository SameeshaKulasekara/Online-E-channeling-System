package com.Contact_Patient;

public class contact_patient {

	private String Username;
	private String Email;
	private String Phone;
	private String Message;
	
	public contact_patient(String username, String email, String mobile, String message) {
		Username = username;
		Email = email;
		Phone = mobile;
		Message = message;
	}

	public String getUsername() {
		return Username;
	}

	public String getEmail() {
		return Email;
	}

	public String getPhone() {
		return Phone;
	}

	public String getMessage() {
		return Message;
	}

	
}
