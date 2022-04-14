package com.luv2code.springdemo.mvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// add an initbinder ... to convert trim input strings
	// remove leading and trailing whitespace
	// resolve issue for our validation
	
	@InitBinder
	/*les méthodes annotées avec @InitBinder seront appelées en premier par le controller pour toutes les request qu'il recoit,
	 * en passant dans le WebDataBinder utilisé par le framework.*/
	public void initBinder(WebDataBinder dataBinder) {
		
		//classe définie dans l'API SPRING pour couper les chaines  de caractères et supprimer les espaces vides en début et fin,
		//true veut dire null si que des espaces vides
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	
	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		theModel.addAttribute("customer", new Customer());
		
		return "customer-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(
			@Valid @ModelAttribute("customer") Customer theCustomer,
			BindingResult theBindingResult) {
		
		System.out.println("Last name: |" + theCustomer.getLastName() + "|");
		
		System.out.println("Free pass: |" + theCustomer.getFreePasses() + "|");
		
		/*
		//Affiche le Binding Result pour pouvoir recuperé le code error et le custom dans le messages.properties 
		System.out.println("Binding Result " + theBindingResult);
		
		*/
		
		if (theBindingResult.hasErrors()) {
			return "customer-form";
		}
		else {
			return "customer-confirmation";
		}
	}
}












