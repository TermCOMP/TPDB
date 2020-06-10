extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int N){
if (N < 536870912 && x < 536870912 && y < 536870912 && x >= -1073741824) {
    	if (x + y >= 0) {
	    	while (x <= N) {
		    	if (__VERIFIER_nondet_int() != 0) {
			    	x = 2*x + y;
				    y = y + 1;
    			} else {
	    			x = x + 1;
		    	}
		    }
	    }
	}
return 0;
}

