package com.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController { 
		
	@RequestMapping(value = { "login" } )
	public String login() {
		return "/home/login";
	}
	
	@RequestMapping(value = { "/loginError" } )
	public String loginError(Model model) {
		model.addAttribute("message", "Username or password is incorrect.");
		return "/home/login";
	}
	
	@RequestMapping(value = { "/accessDenied" } )
	public String accessDenied() {
		return "/common/access_denied";
	}
	
	@RequestMapping(value = { "/register" } )
	public String customerRegister() {
		return "/customer/register";
	}
	
}
