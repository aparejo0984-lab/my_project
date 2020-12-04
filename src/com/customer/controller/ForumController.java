package com.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.db.jdbc.TopicsJDBC;
import com.project.db.jdbc.RepliesJDBC;
import com.project.db.jdbc.UserJDBC;
import com.project.db.model.Topics;
import com.project.db.model.Replies;
import com.project.db.model.User;

@Controller
public class ForumController{
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "/user/blog-post" } )
	public String blogPost(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		model.addAttribute("topics", new Topics());
		return "/forum/post";
	}
	
	@RequestMapping(value = { "/user/savePost" } )
	public String savePost(@ModelAttribute("topics") Topics topic, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		User user = userJDBC.getUser(authentication.getName());
		topic.setCreatedBy(user.getId());
		
		TopicsJDBC topicsJDBC = (TopicsJDBC) context.getBean("topicsJDBC");
		if(topicsJDBC.savePost(topic)) {
			model.addAttribute("message", "Saving of topic is successful!");
		} else {
			model.addAttribute("message", "Error during saving of topics!");
		}
		
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		model.addAttribute("topics", new Topics());
		
		return "/forum/post";
	}
	
	@RequestMapping(value = { "/blog/reply/{id}" } )
	public String viewPost(@PathVariable("id") int id, Model model) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		
		if (authentication != null && authentication.isAuthenticated() && authentication instanceof AnonymousAuthenticationToken) {
			model.addAttribute("showReply", true);
			model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		} else {
			model.addAttribute("showReply", false);
		}
		
		TopicsJDBC topicJDBC = (TopicsJDBC) context.getBean("topicsJDBC");
		model.addAttribute("topic", topicJDBC.getTopic(id));
		model.addAttribute("replies", new Replies());
		
		return "/forum/reply";
	}
	
	@RequestMapping(value = { "/save/replies" } )
	public String saveReply(@ModelAttribute("replies") Replies replies, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserJDBC userJDBC = (UserJDBC) context.getBean("userJDBC");
		User user = userJDBC.getUser(authentication.getName());
		
		model.addAttribute("showReply", true);
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		
		replies.setRepliedBy(user.getId());
		
		RepliesJDBC repliesJDBC = (RepliesJDBC) context.getBean("repliesJDBC");
		if(repliesJDBC.saveReply(replies)) {
			model.addAttribute("message", "Your comment has been sent.");
		} else {
			model.addAttribute("message", "Error in sending comment.");
		}
		
		model.addAttribute("user", userJDBC.getUser(authentication.getName()));
		model.addAttribute("replies", new Replies());
		
		return "redirect:/blog/reply/" + replies.getTopicId();
	}
	


}
