package com.zohocrm.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zohocrm.entities.Contact;

import com.zohocrm.services.ContactService;

@Controller
public class ContactController {
	
	
	private ContactService contactService;


	public ContactController(ContactService contactService) {
		this.contactService = contactService;
	}




	@GetMapping("/listAllContact")
	public String listAllLeads (Model model) {
	System.out.print("Hello Java");
		List<Contact> contacts = contactService.getAllContacts();
		System.out.print("contact size"+ contacts.size());
		model.addAttribute("contacts",contacts);
		return "List_contacts";	
	}

}

