package model;


public class Address {

	private String number;
	private String street;
	private String postCode;
	private String city;
	private String option;

	public Address() {
	}
	
	public Address(String number, String street, String postCode, String city, String option) {
		this.number = number;
		this.street = street;
		this.postCode = postCode;
		this.city = city;
		this.setOption(option);
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

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

}
