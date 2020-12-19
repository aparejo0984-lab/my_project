package com.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.db.jdbc.PersonJDBC;
import com.project.db.jdbc.ProductJDBC;
import com.project.db.model.Product;


@Controller
public class ProductController { 
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "admin/product/list" } )
	public String list(Model model) {
		ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
		model.addAttribute("productList", productJDBC.getAllProduct());
		return "/admin/product/list";
	}
	
	@RequestMapping(value = { "admin/product/create" } )
	public String create(Model model) {
		model.addAttribute("product", new Product());
		return "/admin/product/add";
	}
	
	@RequestMapping(value = { "admin/product/add" } )
	public String add(@ModelAttribute("product") Product product, Model model) {
		ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
		if(productJDBC.addProduct(product, "Insert")) {
			model.addAttribute("alert", "success");
			model.addAttribute("message", "Saving of product is successful");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Error during saving of product");
		}
		model.addAttribute("productList", productJDBC.getAllProduct());
		
		return "redirect:/admin/product/list";
	}
	
	@RequestMapping(value = { "admin/product/edit/{code}" } )
	public String edit(@PathVariable("code") int code, Model model) {
		ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
		model.addAttribute("product", productJDBC.getProduct(code));
		return "/admin/product/edit";
	}
	
	@RequestMapping(value = { "admin/product/update" })
	public String updateProduct(@ModelAttribute("product") Product product, Model model) {
  	    ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
  	   model.addAttribute("code", product.getCode());
		if(productJDBC.updateProduct(product, "Update")) {
			model.addAttribute("alert", "success");
			model.addAttribute("message", "Saving of product is successful");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Error during saving of product");
		}
				
		return "redirect:/admin/product/edit/" + product.getCode();
	}
	
	@RequestMapping(value = "admin/product/delete/{code}")
	public String deleteProduct(@PathVariable("code") int code, Model model) {
		ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
		Product product = productJDBC.getProduct(code);
		
		if(productJDBC.updateProduct(product,"Delete")) {
			model.addAttribute("alert", "success");
			model.addAttribute("message", "Deleting of product is successful");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Error during delete of person");
		}
		
		model.addAttribute("productList", productJDBC.getAllProduct());
		
		return "redirect:/admin/product/list";
	}

}

