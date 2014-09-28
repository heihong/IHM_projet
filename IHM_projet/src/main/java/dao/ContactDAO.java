package dao;

import java.util.ArrayList;
import java.util.List;

import model.Contact;

public class ContactDAO {

	private static ContactDAO instance = null;
	private static List contactList;
	
	private ContactDAO () {
		
	}
	
	public static ContactDAO getInstance() {
		if(instance == null) {
			instance = new ContactDAO();
			init();
		}
		return instance;
	}
	
	private static void init() {
		contactList = new ArrayList<Contact>();
		
		contactList.add(new Contact("Vincent","Guillebaud","guillebaud@et.esiea.fr"));
		contactList.add(new Contact("Hei-Hong","Traing","htraing@et.esiea.fr","0678025596"));
		
	}
	
	public List getContacts() {
		return contactList;
	}
	
	
}
