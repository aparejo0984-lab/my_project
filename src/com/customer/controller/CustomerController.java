package com.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController { 

	@RequestMapping(value = { "user/account" } )
	public String customerAccount() {
		return "/customer/account";
	}
	
	@RequestMapping(value = { "user/order-history" } )
	public String customerOrderHistory() {
		return "/customer/order-history";
	}
	
	@RequestMapping(value = { "user/order-detail" } )
	public String customerOrderDetail() {
		return "/customer/order-detail";
	}
}
