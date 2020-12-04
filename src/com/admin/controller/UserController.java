package com.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.db.jdbc.UserJDBC;

@Controller
public class UserController {

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "admin/user/list" } )
	public String list(Model model) {
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		model.addAttribute("userList", userJDBC.getAllUser());
		return "/admin/user/list";
	}
}

