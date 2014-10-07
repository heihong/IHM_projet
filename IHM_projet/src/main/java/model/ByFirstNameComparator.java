package model;

public class ByFirstNameComparator extends AbstractComparator<Contact>{

	public ByFirstNameComparator() {
	}
	public ByFirstNameComparator(AbstractComparator<Contact> nextComparator) {
		super(nextComparator);
	}
	
	@Override
	protected int doCompare(Contact contact1, Contact contact2) {
		if (contact1.getFirstName() != null)
			return contact1.getFirstName().compareToIgnoreCase(contact2.getFirstName());
		return 0;
	}

}
