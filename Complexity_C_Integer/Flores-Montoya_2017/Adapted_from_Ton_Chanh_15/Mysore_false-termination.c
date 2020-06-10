extern int __VERIFIER_nondet_int(void);

int foo(int x,int c){
if (c < 0) {
    	while (x + c >= 0) {
	    	x = x - c;
		    c = c - 1;
	    }
	}
return 0;
}

