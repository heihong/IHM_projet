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
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import dao.ContactDAO;

@Controller
public class NewContactController {
	
	private List<Address> addressList = new ArrayList<Address>(); ;
	private int numberAddress=0;
	
	@RequestMapping(value = "/newContact",method = RequestMethod.GET)
	public String newContact(Model model){
		model.addAttribute("contact", new Contact()); //link to the view
		
		return "newcontact";// jsp file
	}
	
	@RequestMapping(value="/editContact",method=RequestMethod.GET)
	public String editContact(@RequestParam("id") int id, Model model)
	{
		
		
		Contact contact=(Contact) ContactDAO.getInstance().getActivatedContacts().get(id);
		addressList = contact.getAddressList();
		
			model.addAttribute("contact", contact);
	
			return "editcontact";
		
	}
	
	@RequestMapping(value="/saveEditContact",method=RequestMethod.POST)
	public String saveEditContact(@ModelAttribute("SpringWeb") Contact contact, Model model)
	{
		contact.setAddressList((ArrayList<Address>)addressList);
		ContactDAO.getInstance().modifyContact(contact); 
		model.addAttribute("contact", contact); // replace to call show detail contact
		resetAddressList();
		return "contactDetail";
	}
	
	@RequestMapping(value="/contactDetails",method=RequestMethod.GET)
	public String contactDetails(@RequestParam("id") int id, Model model)
	{
		Contact contact=(Contact) ContactDAO.getInstance().getActivatedContacts().get(id);
		model.addAttribute("contact", contact);
		
		
		return "contactDetail";
	}
	
	@RequestMapping(value="/deleteContact",method=RequestMethod.GET)
	public String deleteContact(@RequestParam("id") int id, Model model)
	{
		
		((Contact) ContactDAO.getInstance().getActivatedContacts().get(id)).removeContact();	// we remove the contact (logical delete set the boolean active to false)
		model.addAttribute("listContactsJson", getJsonContactList()); 
		model.addAttribute("delete", true); 
		
		return "listecontact";
	}
	
	
	@RequestMapping(value = "/addContact", method = RequestMethod.POST) 
	public String addContact(@ModelAttribute("SpringWeb") Contact contact,
			   Model model)
	{
		contact.setId(ContactDAO.getInstance().getActivatedContacts().size());// edit id
		contact.setAddressList((ArrayList<Address>) addressList);
		ContactDAO.getInstance().addContact(ContactDAO.getInstance().getActivatedContacts().size(),contact); 	// add the new contact to the "database"
		
		resetAddressList();
		model.addAttribute("contact", contact); 
		

		return "contactDetail"; // jsp file
	}
	
	private void resetAddressList () {
		addressList = new ArrayList<Address>(); 
		numberAddress = 0;
	}
	


	@RequestMapping(value = "/showContactList", method = RequestMethod.GET) 
	public String showContactList(Model model)
	{
		
		resetAddressList();
		model.addAttribute("listContactsJson", getJsonContactList()); // link to $Listcontacts
		
		return "listecontact"; // jsp file
	}
	
	 
	private String getJsonContactList () {
		/*Convert the Map into a list*/
		Map contactMap = ContactDAO.getInstance().getActivatedContacts();
		List<Contact> sortedContacts = new ArrayList<Contact>(contactMap.values());	
		
		/*Sort the list by lastname and first name (if two contacts have the same last name)*/
		Collections.sort(sortedContacts, new ByLastNameComparator(new ByFirstNameComparator()));
		
		// change data to JSON
		Gson gson = new Gson();
		
		return gson.toJson(sortedContacts);
		
	}
	
	@RequestMapping(value="/AddAddress.htm",method=RequestMethod.POST)
	public @ResponseBody String AddAddress(@ModelAttribute(value="address") Address address, BindingResult result,Model model ){
		String returnText;
		if(!result.hasErrors()){
			addressList.add(address);
			returnText = "";
		}else{
			returnText = "Sorry, an error has occur. User has not been added to list.";
		}
		return returnText;
	}
	
	@RequestMapping(value="/deleteAddress.htm",method=RequestMethod.POST)
	public @ResponseBody String deleteAddress(@ModelAttribute(value="id") int id, BindingResult result,Model model ){
		String returnText;
		if(!result.hasErrors()){
			addressList.remove(id);
			returnText = "" ;
		}else{
			returnText = "Sorry, an error has occur. User has not been added to list.";
		}
		return returnText;
	}
	

}
