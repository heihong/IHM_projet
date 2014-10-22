package model;

import java.util.ArrayList;
import java.util.Random;

public class Contact {
	private String firstName = "";
	private String lastName = "";
	private String birthday="";
	private String email = "";
	private String phoneNumber = "";
	private int id = -1;
	private ArrayList<Address> addressList = null;
	private Boolean isActive = true;
	private String color;
	
	private static String[] colors = {"#C2728A","#E05469","#BA1014","#DE037B","#8A4D95","#C095C8","#9B80DD","#C2B9F0"};

	

	

	public Contact() {
		// TODO Auto-generated constructor stub
		color = colors[new Random().nextInt(colors.length)];
	}

	public Contact(int id, String firstName, String lastName, String email) {
		this.id = id;
		this.isActive = true; // a contact by default is active. A non active contact is a deleted contact
		this.firstName=firstName;
		this.lastName=lastName;
		this.email = email;
		color = colors[new Random().nextInt(colors.length)];

	}
	public Contact(int id, String firstName,String lastName, String email, String phoneNumber) {
		this(id, firstName, lastName, email);
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
	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
}
