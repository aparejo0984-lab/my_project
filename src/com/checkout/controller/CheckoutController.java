package com.checkout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckoutController { 
	
	@RequestMapping(value = { "checkout-address" } )
	public String checkoutAddress() {
		return "/checkout/address";
	}
	
	@RequestMapping(value = { "checkout-delivery" } )
	public String checkoutDelivery() {
		return "/checkout/delivery";
	}
	
	@RequestMapping(value = { "checkout-payment" } )
	public String checkoutPayment() {
		return "/checkout/payment";
	}
	
	@RequestMapping(value = { "checkout-review" } )
	public String checkoutReview() {
		return "/checkout/order-review";
	}
}
