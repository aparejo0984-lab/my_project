package com.project.db.model;

import org.springframework.format.annotation.DateTimeFormat;

public class Orders {
	private int id;
	private int userId;
	private int productCode;
	private int paymentMode;
	private int statusId;
	private int paymentReceiptId;
	private String invoice;
	private int quantity;
	private float total;
	private int deliveryOption;
	private DateTimeFormat deliveryDatetime;
	private float deliveryFee;
	
	//product details - secondary db table 
	private Product productDetails;
	
	//user details - secondary db table 
	private User userDetails;
	
	public Orders() {
		productDetails = new Product();
		userDetails = new User();
	}

	public Orders(int userId, int productCode, int paymentMode, int quantity, float total, int deliveryOption, String invoice) {
		super();
		this.userId = userId;
		this.productCode = productCode;
		this.paymentMode = paymentMode;
		this.quantity = quantity;
		this.total = total;
		this.deliveryOption = deliveryOption;
		this.invoice = invoice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public int getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(int paymentMode) {
		this.paymentMode = paymentMode;
	}

	public int getStatusId() {
		return statusId;
	}

	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}

	public int getPaymentReceiptId() {
		return paymentReceiptId;
	}

	public void setPaymentReceiptId(int paymentReceiptId) {
		this.paymentReceiptId = paymentReceiptId;
	}

	public String getInvoice() {
		return invoice;
	}

	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	
	public int getDeliveryOption() {
		return deliveryOption;
	}

	public void setDeliveryOption(int deliveryOption) {
		this.deliveryOption = deliveryOption;
	}

	public DateTimeFormat getDeliveryDatetime() {
		return deliveryDatetime;
	}

	public void setDeliveryDatetime(DateTimeFormat deliveryDatetime) {
		this.deliveryDatetime = deliveryDatetime;
	}

	public float getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(float deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public Product getProductDetails() {
		return productDetails;
	}

	public void setProductDetails(Product productDetails) {
		this.productDetails = productDetails;
	}

	public User getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(User userDetails) {
		this.userDetails = userDetails;
	}
}
