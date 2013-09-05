package com.mkyong.common.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.mkyong.common.model.Customer;

@Controller
@RequestMapping("/customer")
public class SignUpController {

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String addCustomer(
			@Valid Customer customer,
			BindingResult result) {

		sink(customer.getName());
		sink(customer.name);
		sink(customer);

		CustomerManager.save(customer);
		
		if (result.hasErrors()) {
			return "SignUpForm";
		} else {
			return "Done";
		}

	}

	@RequestMapping(value = "/signup2", method = RequestMethod.POST)
	public String addCustomer2(
			Customer customer,
			BindingResult result) {

		sink(customer.getName());
		sink(customer.name);
		sink(customer);
		
		CustomerManager.save(customer);

		if (result.hasErrors()) {
			return "SignUpForm";
		} else {
			return "Done";
		}

	}

	@RequestMapping(method = RequestMethod.GET)
	public String displayCustomerForm(ModelMap model) {

		model.addAttribute("customer", new Customer());
		return "SignUpForm";

	}

	private void sink (Object o) {
		//
	}

}