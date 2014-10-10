package controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import model.Address;
import model.ByFirstNameComparator;
import model.ByLastNameComparator;
import model.Contact;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ContactDAO;

@Controller
public class NewContactController {
	
	ArrayList <Address> AddressList=new ArrayList<Address>();

	
	@RequestMapping(value = "/newContact",method = RequestMethod.GET)
	public String newContact(Model model){
		model.addAttribute("contact", new Contact()); //link to the view
		
		return "newcontact";// jsp file
	}
	
	@RequestMapping(value="/editContact",method=RequestMethod.GET)
	public String editContact(@RequestParam("id") int id, Model model)
	{
		Contact contact=(Contact) ContactDAO.getInstance().getActivatedContacts().get(id);
		model.addAttribute("contact", contact);

		return "editcontact";
	}
	
	@RequestMapping(value="/saveEditContact",method=RequestMethod.POST)
	public String saveEditContact(@ModelAttribute("SpringWeb") Contact contact, Model model)
	{
		ContactDAO.getInstance().modifyContact(contact); 
		model.addAttribute("contact", contact); // replace to call show detail contact
		return "result";
	}
	
	@RequestMapping(value="/contactDetails",method=RequestMethod.GET)
	public String contactDetails(@RequestParam("id") int id, Model model)
	{
		Contact contact=(Contact) ContactDAO.getInstance().getActivatedContacts().get(id);
		model.addAttribute("contact", contact);
		
		
		return "result";
	}
	
	@RequestMapping(value="/deleteContact",method=RequestMethod.GET)
	public String deleteContact(@RequestParam("id") int id, Model model)
	{
		
		((Contact) ContactDAO.getInstance().getActivatedContacts().get(id)).removeContact();	// we remove the contact (logical delete set the boolean active to false)
		
		
		return "deletecontact";
	}
	
	
	@RequestMapping(value = "/addContact", method = RequestMethod.POST) 
	public String addContact(@ModelAttribute("SpringWeb") Contact contact,
			   Model model)
	{
		contact.setId(ContactDAO.getInstance().getActivatedContacts().size());// edit id
		ContactDAO.getInstance().addContact(ContactDAO.getInstance().getActivatedContacts().size(),contact); 	// add the new contact to the "database"
		
	//	System.out.println(contact.getAddressList().get(0).getNumber());
		
		model.addAttribute("contact", contact); 
		

/*		model.addAttribute("option", address.getOption());
		model.addAttribute("number", address.getNumber());
		model.addAttribute("street", address.getStreet());
		model.addAttribute("postCode", address.getPostCode());*/
		//model.addAttribute("Listaddress", AddressList); 
		
		return "result"; // jsp file
	}
	

	@RequestMapping(value = "/showContactList", method = RequestMethod.GET) 
	public String showContactList(Model model)
	{
		/*Convert the Map into a list*/
		Map contactMap = ContactDAO.getInstance().getActivatedContacts();
		List<Contact> sortedContacts = new ArrayList<Contact>(contactMap.values());	
		
		/*Sort the list by lastname and first name (if two contacts have the same last name)*/
		Collections.sort(sortedContacts, new ByLastNameComparator(new ByFirstNameComparator()));
		
		
		model.addAttribute("Listcontacts", sortedContacts); // link to $Listcontacts
		
		return "listecontact"; // jsp file
	}
	


	

}
