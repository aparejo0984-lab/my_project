package com.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.project.db.jdbc.OrdersJDBC;
import com.project.db.jdbc.ReviewsJDBC;
import com.project.db.jdbc.UserJDBC;
import com.project.db.model.Reviews;
import com.project.db.model.User;
import com.project.db.model.Orders;

@Controller
public class CustomerController { 

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "user/account" } )
	public String account(Model model, HttpSession session) {
		String username = ((org.springframework.security.core.userdetails.User) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal()).getUsername();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		User user = userJDBC.getUser(username);
		session.setAttribute("user", user);
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		if (authentication != null && authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {
			model.addAttribute("isAdmin", true);
		} else {
			model.addAttribute("isAdmin", false);
		}
		
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		return "/customer/account";
	}
	
	@RequestMapping(value = { "user/update" } )
	public String updateUser(@ModelAttribute("user") User user, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		
		User userDetails = userJDBC.getUser(authentication.getName());
		userDetails.setAddress(user.getAddress());
		userDetails.setName(user.getName());
		userDetails.setContactNumber(user.getContactNumber());
		
		if(userJDBC.saveUser(userDetails, "Update")) {
			model.addAttribute("alert", "success");
			model.addAttribute("message", "Your profile is updated");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Error in updating profile");
		}
		
		if (authentication != null && authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {
			model.addAttribute("isAdmin", true);
		} else {
			model.addAttribute("isAdmin", false);
		}
		
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		
		return "/customer/account";
	}
	
	@RequestMapping(value = { "/user/update/password" } )
	public String updatePassword(@ModelAttribute("user") User user, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		user.setUsername(authentication.getName());
		
		User userDetails = userJDBC.getUser(authentication.getName());
		userDetails.setPassword(user.getPassword());
		
		if (authentication != null && authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {
			model.addAttribute("isAdmin", true);
		} else {
			model.addAttribute("isAdmin", false);
		}
		
		if(userJDBC.saveUser(userDetails, "Update")) {
			model.addAttribute("alert", "success");
			model.addAttribute("passwordMsg", "Your password is updated");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("passwordMsg", "Error in updating password");
		}
		
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		
		return "/customer/account";
	}
	
	@RequestMapping(value = { "user/order/history" } )
	public String orderHistory(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		OrdersJDBC ordersJDBC = (OrdersJDBC) context.getBean("ordersJDBC");
		model.addAttribute("odersList", ordersJDBC.getMyOrders(authentication.getName()));
			
		return "/customer/order-history";
	}
	
	@RequestMapping(value = { "user/order/detail/{id}" } )
	public String orderDetail(@PathVariable("id") int id, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		OrdersJDBC ordersJDBC = (OrdersJDBC) context.getBean("ordersJDBC");
		model.addAttribute("order", ordersJDBC.getMyOrderDetail(id, authentication.getName()));
		return "/customer/order-detail";
	}
	
	@RequestMapping(value = { "user/order/cancel/{id}" } )
	public String orderCancel(@PathVariable("id") int id, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		OrdersJDBC ordersJDBC = (OrdersJDBC) context.getBean("ordersJDBC");
		Orders orders =  ordersJDBC.getMyOrderDetail(id, authentication.getName());
		
		if(ordersJDBC.saveOrder(orders, "Cancel")) {
			model.addAttribute("alert", "success");
			model.addAttribute("message", "Order has been cancelled!");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Error during order cancellation!");
		}
		
		model.addAttribute("order", orders);
		
		return "/customer/order-detail";
	}
	
	@RequestMapping(value = { "/user/review" } )
	public String review(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));

		model.addAttribute("reviews", new Reviews());
		return "/shop/review";
	}
	
	@RequestMapping(value = { "/user/review/add" } )
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
