package com.mycompany.staff_management;

public class Employee {
	private int eid;
	private String name;
	private String dob;
	private String address;
	private String gender;
	private String jobposition;
	private String email;
	private String contact;
	
	public Employee(int eid, String name, String dob, String address, String gender, String jobposition, String email,
			String contact) {
		
		this.eid = eid;
		this.name = name;
		this.dob = dob;
		this.address = address;
		this.gender = gender;
		this.jobposition = jobposition;
		this.email = email;
		this.contact = contact;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getJobposition() {
		return jobposition;
	}

	public void setJobposition(String jobposition) {
		this.jobposition = jobposition;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}



	


	
	
	
	
}
