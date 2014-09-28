package model;

import javax.validation.constraints.Pattern;

public class Address {

	private String number;
	private String street;
	@Pattern(regexp="[0-9]{5}")
	private String postCode;
	private String city;

	public Address() {
	}
	
	public Address(String number, String street, String postCode, String city) {
		this.number = number;
		this.street = street;
		this.postCode = postCode;
		this.city = city;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

}
