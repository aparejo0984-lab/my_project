package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.db.model.Reviews;
import com.project.db.model.Product;
import com.project.db.model.Orders;
import com.project.db.jdbc.ProductJDBC;
import com.project.db.jdbc.ReviewsJDBC;
import com.project.db.jdbc.UserJDBC;

@Controller
public class ShopController { 
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "", "shop" } )
	public String shop(Model model) {
		
		ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
		model.addAttribute("productList", productJDBC.getAllProduct());
		return "/shop/category";
	}
	
	@RequestMapping(value = { "shop/detail/{code}" } )
	public String detail(@PathVariable("code") int code, Model model) {
		ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
		model.addAttribute("product", productJDBC.getProduct(code));
		return "/shop/detail";
	}
	
	@RequestMapping(value = { "shop/basket" } )
	public String basket(@ModelAttribute("product") Product product, Model model) {
		model.addAttribute("product", product);
		model.addAttribute("orders", new Orders());
		
		return "/shop/basket";
	}
	
}
