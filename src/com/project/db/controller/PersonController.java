package com.project.db.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.db.jdbc.PersonJDBC;
import com.project.db.model.Person;

@Controller
public class PersonController {

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(value = { "", "inputPerson" } )
	public String inputPerson(Model model) {
		model.addAttribute("person", new Person());
		return "/register";
	}

	@RequestMapping(value = "savePerson")
	public String savePerson(@ModelAttribute("person") Person person, Model model) {
		PersonJDBC personJDBC = (PersonJDBC) context.getBean("personJDBC");
		if(personJDBC.saveUser(person)) {
			model.addAttribute("message", "Saving of person is successful!");
		} else {
			model.addAttribute("message", "Error during saving of person!");
		}
		model.addAttribute("person", new Person());
		return "/register";
	}

	@RequestMapping(value = { "viewAllPerson" } )
	public String viewAllPerson(Model model) {
		PersonJDBC personJDBC = (PersonJDBC) context.getBean("personJDBC");
		model.addAttribute("personList", personJDBC.getAllPerson());
		return "/list";
	}

	@RequestMapping(value = { "editPerson" } )
	public String editPerson(@RequestParam("id") int id, Model model) {
		PersonJDBC personJDBC = (PersonJDBC) context.getBean("personJDBC");
		model.addAttribute("person", personJDBC.getPerson(id));
		return "/edit";
	}
	
	@RequestMapping(value = "updatePerson")
	public String updatePerson(@ModelAttribute("person") Person person, Model model) {
		PersonJDBC personJDBC = (PersonJDBC) context.getBean("personJDBC");
		if(personJDBC.updateUser(person)) {
			model.addAttribute("message", "Saving of person is successful!");
		} else {
			model.addAttribute("message", "Error during saving of person!");
		}
		return "/edit";
	}
	
	@RequestMapping(value = "deletePerson")
	public String deletePerson(@RequestParam("id") int id, Model model) {
		PersonJDBC personJDBC = (PersonJDBC) context.getBean("personJDBC");
		if(personJDBC.deleteUser(id)) {
			model.addAttribute("message", "Deleting of person is successful!");
		} else {
			model.addAttribute("message", "Error during delete of person!");
		}
		model.addAttribute("personList", personJDBC.getAllPerson());
		return "/list";
	}
	
}
