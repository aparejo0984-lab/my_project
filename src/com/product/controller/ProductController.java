package com.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController { 
	
	@RequestMapping(value = { "admin/product-list" } )
	public String list() {
		return "/admin/product/list";
	}
	
	@RequestMapping(value = { "admin/product-detail" } )
	public String detail() {
		return "/admin/product/list";
	}
}

