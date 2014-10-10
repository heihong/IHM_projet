package dao;


import java.util.HashMap;
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
		
		contactList.put(0,new Contact(0,"Vincent","Guillebaud","guillebaud@et.esiea.fr"));
		contactList.put(1,new Contact(1,"Hei-Hong","Traing","htraing@et.esiea.fr","0678025596"));
		contactList.put(2,new Contact(2,"Tom","Hanks",""));
		
	}
	public Map getAllContacts() {
				
		return contactList;
	}
	
	public Map getActivatedContacts() {
		/*
		 * We return only the activated contacts. The unactivated contacts are the deleted contacts
		 * */
		Map<Integer, Contact> activatedContacts = new HashMap<Integer, Contact>();
		
		for(int i=0; i<contactList.size();i++) {
			if( ((Contact)contactList.get(i)).isContactActive() ) {
				activatedContacts.put(i, (Contact)contactList.get(i));
			}
		}
		
		return activatedContacts;
	}
	
	public void modifyContact(Contact contact) {
		contactList.put(contact.getId(), contact);
	}
	
	public void addContact(int id, Contact contact) {
		contact.setId(id);
		contactList.put(id,contact);
	}
	
	public void removeContact(Contact contact) {
		
	}
}
