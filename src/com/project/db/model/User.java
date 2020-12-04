package com.project.db.model;

public class User {
	private int id;
	private String username;
	private String password;
	private String name;
	private String address;
	private String contactNumber;
	
	public User() {
	}

	public User(String username, String password, String name, String address, String contactNumber) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.address = address;
		this.contactNumber = contactNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
}
