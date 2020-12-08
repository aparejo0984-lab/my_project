package com.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.db.jdbc.OrdersJDBC;
import com.project.db.jdbc.ProductJDBC;
import com.project.db.model.Orders;


@Controller
public class OrdersController { 
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "admin/orders/list" } )
	public String list(Model model) {
		OrdersJDBC ordersJDBC = (OrdersJDBC) context.getBean("ordersJDBC");
		model.addAttribute("odersList", ordersJDBC.getAllOrders());
		return "/admin/order/list";
	}
	
	
	@RequestMapping(value = { "admin/orders/view/{id}" } )
	public String view(@PathVariable("id") int id, Model model) {
		OrdersJDBC ordersJDBC = (OrdersJDBC) context.getBean("ordersJDBC");
		model.addAttribute("order", ordersJDBC.getOrder(id));
		return "/admin/order/detail";
	}
}


