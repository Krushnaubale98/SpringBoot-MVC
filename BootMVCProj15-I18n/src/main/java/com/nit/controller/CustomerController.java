package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.nit.model.Customer;

@Controller
public class CustomerController {

	@GetMapping("/")
	public String showHomePage() {
		return "home";
	}

	@GetMapping("/customer_register")
	public String showCustomerFormPage(@ModelAttribute("cust") Customer cust) {
		return "customer_register";
	}
}
