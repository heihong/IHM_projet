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
	
	
	
	
	@RequestMapping(value = "/newContact",method = RequestMethod.GET)
	public String newContact(Model model){
		model.addAttribute("contact", new Contact()); //model associé à la vue
		
		return "newcontact";// jsp file
	}
	
	@RequestMapping(value = "/addContact", method = RequestMethod.POST) // fonction du bouton add
	public String addContact(@ModelAttribute("SpringWeb") Contact contact,
			   Model model)
	{
		ContactDAO.getInstance().addContact(contact); 	// add the contact to the "data base"
		
		
		 model.addAttribute("Listcontacts", ContactDAO.getInstance().getContacts()); // reli $Listcontacts
		
		return "result"; // fichier jsp
	}


	

}
