package controller;



import java.util.ArrayList;

import model.Contact;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class NewContactController {
	
	ArrayList <Contact> contactList=new ArrayList<Contact>();
	
	
	@RequestMapping(value = "/newContact",method = RequestMethod.GET)
	public String newContact(Model model){
		model.addAttribute("contact", new Contact()); //model associé à la vue
		
		return "newcontact";// jsp file
	}
	
	@RequestMapping(value = "/addContact", method = RequestMethod.POST) // fonction du bouton add
	public String addContact(@ModelAttribute("SpringWeb") Contact contact,
			   Model model)
	{
		contactList.add(contact);
		 model.addAttribute("Listcontacts", contactList); // reli $Listcontacts
		
		return "result"; // fichier jsp
	}


	

}
