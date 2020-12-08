package com.security.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.db.jdbc.UserJDBC;
import com.project.db.model.User;

@Controller
public class SecurityController { 
		
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "login" } )
	public String login() {
		return "/home/login";
	}
	
	@RequestMapping(value = { "/loginError" } )
	public String loginError(Model model) {
		model.addAttribute("alert", "danger");
		model.addAttribute("message", "Username or password is incorrect.");
		return "/home/login";
	}
	
	@RequestMapping(value = { "/accessDenied" } )
	public String accessDenied() {
		return "/common/access_denied";
	}
	
	@RequestMapping(value = { "/register" } )
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "/home/register";
	}
	
	@RequestMapping(value = { "/register/add" } )
	public String addUser(@ModelAttribute("user") User user, Model model) {
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		
		if (userJDBC.getUser(user.getUsername()) != null) {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Username already exists");
		} else {
			if(userJDBC.addUser(user)) {
				model.addAttribute("alert", "success");
				model.addAttribute("message", "Your account is successfully created. Login to your acount");
			} else {
				model.addAttribute("alert", "danger");
				model.addAttribute("message", "Error during sending your review");
			}
		}
		return "/home/register";
	}
	
}
