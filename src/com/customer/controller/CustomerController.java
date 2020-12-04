package com.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.project.db.jdbc.UserJDBC;
import com.project.db.model.User;

@Controller
public class CustomerController { 

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "user/account" } )
	public String account(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		
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
		
		user.setUsername(authentication.getName());
		
		if(userJDBC.updateUser(user)) {
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
		
		if (authentication != null && authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {
			model.addAttribute("isAdmin", true);
		} else {
			model.addAttribute("isAdmin", false);
		}
		
		if(userJDBC.updatePassword(user)) {
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
	public String orderHistory() {
		return "/customer/order-history";
	}
	
	@RequestMapping(value = { "user/order/detail" } )
	public String orderDetail() {
		return "/customer/order-detail";
	}
}
