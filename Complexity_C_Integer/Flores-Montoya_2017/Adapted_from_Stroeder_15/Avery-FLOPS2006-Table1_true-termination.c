extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z,int i){
z = 0;
i = x;
if (y > 0 && x > 0) {
    	while (i > 0) {
	    	i = i - 1;
		    z = z + 1;
	    }
    	while (i < y) {
	    	i = i + 1;
		    z = z - 1;
	    }
	}
return 0;
}

