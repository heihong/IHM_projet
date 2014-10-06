package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Contact;

/**
 * ContactDAO is a singleton class used to simulate the database
 * @author Vincent
 *
 */
public class ContactDAO {

	private static ContactDAO instance = null;
	private static Map<Integer, Contact> contactList;
	
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
		contactList  = new HashMap<Integer, Contact>();
		
		// add some contacts to the list to don't have a empty "data base"
		
		contactList.put(0,new Contact("Vincent","Guillebaud","guillebaud@et.esiea.fr"));
		contactList.put(1,new Contact("Hei-Hong","Traing","htraing@et.esiea.fr","0678025596"));
		
	}
	
	public Map getContacts() {
		return contactList;
	}
	
	public void addContact(int id, Contact contact) {
		contactList.put(id,contact);
	}
	
	public void removeContact(Contact contact) {
		
	}
}
