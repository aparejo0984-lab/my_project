package com.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController { 
	
	@RequestMapping(value = { "customer-register" } )
	public String customerRegister() {
		return "/customer/register";
	}
	
	@RequestMapping(value = { "customer-account" } )
	public String customerAccount() {
		return "/customer/account";
	}
	
	@RequestMapping(value = { "customer-order-history" } )
	public String customerOrderHistory() {
		return "/customer/order-history";
	}
	
	@RequestMapping(value = { "customer-order-detail" } )
	public String customerOrderDetail() {
		return "/customer/order-detail";
	}
}
