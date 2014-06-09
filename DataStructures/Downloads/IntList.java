package Fa2011_1;

public class IntList {
	
	// class constant
	private static final int DEFAULT_CAP = 10;
	
	// instance variables
	private int[] values;
	private int size;
	
	// post: create an empty list
	public IntList() {
		this(DEFAULT_CAP);
	}
	
	
	// pre: initialCap >= 0
	// post: create an empty list with capacity of initialCap
	public IntList(int initialCap) {
		if(initialCap < 0)
			throw new IllegalArgumentException("violation of precondition. " +
					"initialCap may not be negative: " + initialCap);
		
		values = new int[initialCap];
	}
	
	// return size of list
	public int size() {
		return size;
	}
	
	// pre: none
	// post: newValue added to end of list, size of list increased by 1
	public void add(int newValue) {
		insert(size, newValue);
	}


	private void resize(int newCap) {
		int[] temp = new int[newCap];
		System.arraycopy(values, 0, temp, 0, values.length);
		values = temp;
	}
	
	// pre: -1 < pos < size()
	// post: return element in list at specified position
	public int get(int pos){
		if(!(-1 < pos && pos < size))
			throw new IllegalArgumentException("violation of precondition. " +
					"pos must be in bounds: " + pos);
		
		return values[pos];
	}
	
	
	public String toString() {
		StringBuilder result = new StringBuilder("[");
		final int LIM = size - 1;
		for(int i = 0; i < LIM; i++)
			result.append(values[i] + ", ");
		if(size > 0)
			result.append(values[LIM]);
		result.append("]");
		return result.toString();
	}
	
	// pre: 0 <= pos <= size()
	// post: get(pos) returns newValue, elements at old positions moved one
	// element to right, size goes up by one
	public void insert(int pos, int newValue) {
		// ensure capacity
		if(size == values.length)
			resize(values.length * 2 + 1);
		
		// shift elements to right
		for(int i = size; i > pos; i--)
			values[i] = values[i - 1];
		
		values[pos] = newValue;
		size++;
	}
	
	
	public void insertAll(int pos, IntList other) {
		int newSize = this.size + other.size;
		if(newSize >= this.values.length)
			resize(newSize * 2 + 1);
		
		final int LIM = other.size + pos;
		
		// shift elements in this list to right
		for(int i = newSize - 1; i >= LIM; i--)
			this.values[i] = this.values[i - other.size];
		
		// copy elements from other into this list
		for(int i = 0; i < other.size; i++)
			this.values[i + pos] = other.values[i];
		
		this.size = newSize;
	}
	
	
	
	
	
	
	

}
