package model;

public class ByLastNameComparator extends AbstractComparator<Contact>{

	public ByLastNameComparator() {
	}
	public ByLastNameComparator(AbstractComparator<Contact> nextComparator) {
		super(nextComparator);
	}
	
	@Override
	protected int doCompare(Contact contact1, Contact contact2) {
		if (contact1.getLastName() != null)
			return contact1.getLastName().compareToIgnoreCase(contact2.getLastName());
		return 0;
	}

}
