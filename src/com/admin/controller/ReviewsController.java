package com.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.db.jdbc.ReviewsJDBC;

@Controller
public class ReviewsController {

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "admin/reviews/list" } )
	public String viewAllReviews(Model model) {
		ReviewsJDBC reviewsJDBC = (ReviewsJDBC) context.getBean("reviewsJDBC");
		model.addAttribute("reviewList", reviewsJDBC.getAllReviews());
		return "/admin/review/list";
	}
}

