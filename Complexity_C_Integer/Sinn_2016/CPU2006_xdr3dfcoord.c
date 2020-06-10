int random();

//Complexity: O(n)
void xdr3dfcoord(int size, int limit) {
	int i = 0;
	while (i < size) {
	    int is_small = 0;
	    if (i + 1 < size) {
		if (random()) {
		    is_small = 1;
		}
    
	    }
	    i++;
	    
	    int run = 0;
	    while (is_small && run < limit) {
		run++;
		i++;
		is_small = 0;
		if (i < size &&
			random()) {
		    is_small = 1;
		}
	    }
	    for (int k=0; k < run; k+=3) {
	    }
	}
}

