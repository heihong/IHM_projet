package model;

import java.util.List;

public class AddressList {

	private List<Address> address;
	
	public AddressList() {
	}
	
	public List getAddressList () {
		return address;
	}
	public void setAddressList (List<Address> addressList) {
		this.address = addressList;
	}
	
}
