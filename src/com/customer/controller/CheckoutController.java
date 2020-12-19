package com.customer.controller;

import java.security.SecureRandom;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.db.jdbc.ProductJDBC;
import com.project.db.jdbc.OrdersJDBC;
import com.project.db.jdbc.UserJDBC;
import com.project.db.model.Orders;
import com.project.db.model.User;

@Controller
public class CheckoutController { 
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "user/checkout/address" } )
	public String address(@ModelAttribute("orders") Orders orders, Model model, HttpSession session) {
		model.addAttribute("orders", orders);
		
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");		
		String username = ((org.springframework.security.core.userdetails.User) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal()).getUsername();
		User user = userJDBC.getUser(username);
		session.setAttribute("user", user);
		model.addAttribute("user", user);
		
		return "/checkout/address";
	}
	
	@RequestMapping(value = { "user/checkout/delivery" } )
	public String delivery(@ModelAttribute("orders") Orders orders, Model model) {
		model.addAttribute("orders", orders);
		return "/checkout/delivery";
	}
	
	@RequestMapping(value = { "user/checkout/payment" } )
	public String payment(@ModelAttribute("orders") Orders orders, Model model) {
		model.addAttribute("orders", orders);
		return "/checkout/payment";
	}
	
	@RequestMapping(value = { "user/checkout/review" } )
	public String review(@ModelAttribute("orders") Orders orders, Model model) {
		model.addAttribute("orders", orders);
		
		ProductJDBC productJDBC = (ProductJDBC) context.getBean("productJDBC");
		model.addAttribute("product", productJDBC.getProduct(orders.getProductCode()));
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		
		return "/checkout/order-review";
	}
	
	@RequestMapping(value = { "user/checkout/order" } )
	public String order(@ModelAttribute("orders") Orders orders, Model model) {
		model.addAttribute("orders", orders);
		
		orders.setId(99);
		orders.setInvoice(generateRandomString(6));
		orders.setStatusId(1); // pending status
		
		OrdersJDBC ordersJDBC = (OrdersJDBC) context.getBean("ordersJDBC");
		if(ordersJDBC.saveOrder(orders, "Insert")) {
			model.addAttribute("alert", "success");
			model.addAttribute("message", "Order has been sent!");
		} else {
			model.addAttribute("alert", "danger");
			model.addAttribute("message", "Error during order processing!");
		}
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("odersList", ordersJDBC.getMyOrders(authentication.getName()));
		
		return "/customer/order-history";
	}
	
    /**
     * This method returns a random string generated with SecureRandom
     * 
     * @param length
     * @return 
     */
    public static String generateRandomString(int length) {
        String CHAR_LOWER = "abcdefghijklmnopqrstuvwxyz";
        String CHAR_UPPER = CHAR_LOWER.toUpperCase();
        String NUMBER = "0123456789";

        String DATA_FOR_RANDOM_STRING = CHAR_LOWER + CHAR_UPPER + NUMBER;
        SecureRandom random = new SecureRandom();
    
        if (length < 1) throw new IllegalArgumentException();

        StringBuilder sb = new StringBuilder(length);
        
        for (int i = 0; i < length; i++) {
            // 0-62 (exclusive), random returns 0-61
            int rndCharAt = random.nextInt(DATA_FOR_RANDOM_STRING.length());
            char rndChar = DATA_FOR_RANDOM_STRING.charAt(rndCharAt);

            sb.append(rndChar);
        }
        String randomStr = sb.toString();
        
        return randomStr.toUpperCase();
    }
}
