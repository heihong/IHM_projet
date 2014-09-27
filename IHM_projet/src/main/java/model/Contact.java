package model;

public class Contact {

	private String firstName;
	private String lastName;

	
	public Contact() {
		// TODO Auto-generated constructor stub
	}

	public Contact(String firstName,String lastName, String email) {
		
		this.firstName=firstName;
		this.lastName=lastName;


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


}
