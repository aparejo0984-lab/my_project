package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.db.model.Reviews;
import com.project.db.jdbc.ReviewsJDBC;

@Controller
public class ShopController { 
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "", "shop" } )
	public String shop() {
		return "/shop/category";
	}
	
	@RequestMapping(value = { "shop/detail" } )
	public String detail() {
		return "/shop/detail";
	}
	
	@RequestMapping(value = { "shop/basket" } )
	public String basket() {
		return "/shop/basket";
	}
	
	@RequestMapping(value = { "shop/review" } )
	public String review(Model model) {
		model.addAttribute("reviews", new Reviews());
		return "/shop/review";
	}
	
	@RequestMapping(value = { "/shop/review/add" } )
	public String addReview(@ModelAttribute("reviews") Reviews reviews, Model model) {
		ReviewsJDBC reviewsJDBC = (ReviewsJDBC) context.getBean("reviewsJDBC");
		if(reviewsJDBC.saveReview(reviews)) {
			model.addAttribute("alert", "success");
			model.addAttribute("message", "Your review has been sent");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Error during sending your review");
		}
		
		model.addAttribute("reviews", new Reviews());
		return "/shop/review";
	}
	
}
