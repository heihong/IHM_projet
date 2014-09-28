package controller;



import java.util.ArrayList;

import model.Contact;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ContactDAO;

@Controller
public class NewContactController {
	
	ArrayList <Contact> contactList=new ArrayList<Contact>();
	
	
	@RequestMapping(value = "/newContact",method = RequestMethod.GET)
	public String newContact(Model model){
		model.addAttribute("contact", new Contact()); //link to the view
		
		return "newcontact";// jsp file
	}
	
	@RequestMapping(value = "/addContact", method = RequestMethod.POST) 
	public String addContact(@ModelAttribute("SpringWeb") Contact contact,
			   Model model)
	{
		contactList.add(contact);
		 model.addAttribute("Listcontacts", contactList); // link to $Listcontacts
		
		return "result"; // jsp file
	}


	

}
