package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController { 
	
	@RequestMapping(value = { "shop" } )
	public String shop() {
		return "/shop/category";
	}
	
	@RequestMapping(value = { "shop-detail" } )
	public String shopDetail() {
		return "/shop/detail";
	}
	
	@RequestMapping(value = { "shop-basket" } )
	public String shopBasket() {
		return "/shop/basket";
	}
	
	@RequestMapping(value = { "shop-review" } )
	public String shopReview() {
		return "/shop/review";
	}

}
