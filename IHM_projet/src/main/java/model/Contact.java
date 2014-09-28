package model;

import java.util.ArrayList;

public class Contact {

	private String firstName;
	private String lastName;
	private String email;
	private String phoneNumber;
	private ArrayList<Address> addressList;
	private Boolean isActive;

	

	public Contact() {
		// TODO Auto-generated constructor stub
	}

	public Contact(String firstName,String lastName, String email) {
		this.isActive = true; // a contact by default is active. A non active contact is a deleted contact
		this.firstName=firstName;
		this.lastName=lastName;
		this.email = email;

	}
	public Contact(String firstName,String lastName, String email, String phoneNumber) {
		this(firstName, lastName, email);
		this.phoneNumber = phoneNumber;
	}
	
	public void removeContact() {
		this.isActive = false;
	}
	public Boolean isContactActive () {
		return isActive;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public ArrayList<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(ArrayList<Address> addressList) {
		this.addressList = addressList;
	}

}
