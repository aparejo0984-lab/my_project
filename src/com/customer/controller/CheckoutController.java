package com.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckoutController { 
	
	@RequestMapping(value = { "user/checkout/address" } )
	public String checkoutAddress() {
		return "/checkout/address";
	}
	
	@RequestMapping(value = { "user/checkout/delivery" } )
	public String checkoutDelivery() {
		return "/checkout/delivery";
	}
	
	@RequestMapping(value = { "user/checkout/payment" } )
	public String checkoutPayment() {
		return "/checkout/payment";
	}
	
	@RequestMapping(value = { "user/checkout/review" } )
	public String checkoutReview() {
		return "/checkout/order-review";
	}
}
