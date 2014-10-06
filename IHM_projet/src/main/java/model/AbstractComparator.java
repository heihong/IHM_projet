package model;

import java.util.Comparator;

public abstract class AbstractComparator<T> implements Comparator<T> {
	private final AbstractComparator<T> next;

	public AbstractComparator() {
		this.next = null;
	}

	public AbstractComparator(AbstractComparator<T> nextComparator) {
		this.next = nextComparator;
	}

	
	public int compare(T o1, T o2) {
		int result = doCompare(o1, o2);
		if (result != 0)
			return result;
		else{

			return next != null ? next.compare(o1, o2) : 0;
		}
	}

	protected abstract int doCompare(T o1, T o2);

}
