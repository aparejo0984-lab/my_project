package com.project.db.model;

public class Product {
	private int code;
	private String name;
	private String description;
	private float price;
	private int status;
	private int enabled;
	
	public Product(){
		
	}
	
	public Product(int code, String name, String description, float price, int status, int enabled){
		super();
		this.code = code;
		this.name = name;
		this.description = description;
		this.price = price;
		this.status = status;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
}
