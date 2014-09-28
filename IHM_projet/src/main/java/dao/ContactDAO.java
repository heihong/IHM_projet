package dao;

import java.util.ArrayList;
import java.util.List;

import model.Contact;

/**
 * ContactDAO is a singleton class used to simulate the database
 * @author Vincent
 *
 */
public class ContactDAO {

	private static ContactDAO instance = null;
	private static List contactList;
	
	private ContactDAO () {
		
	}
	
	public static ContactDAO getInstance() {
		if(instance == null) {
			// if singleton is not instantiate, we do it.
			instance = new ContactDAO();
			init();
		}
		return instance;
	}
	
	private static void init() {
		contactList = new ArrayList<Contact>();
		
		// add some contacts to the list to don't have a empty "data base"
		
		contactList.add(new Contact("Vincent","Guillebaud","guillebaud@et.esiea.fr"));
		contactList.add(new Contact("Hei-Hong","Traing","htraing@et.esiea.fr","0678025596"));
		
	}
	
	public List getContacts() {
		return contactList;
	}
	
	public void addContact(Contact contact) {
		contactList.add(contact);
	}
	public void removeContact(Contact contact) {
		ArrayList<Contact> c = (ArrayList<Contact>) contactList;
		c.get(c.indexOf(contact)).removeContact();	// we "remove the contact (we set it inactive)"
	}
}
