extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
if (x <= 10000 && x >= -10000 && y <= 10000 && z <= 10000) {
	    while (y >= 1) {
		    x = x - 1;
		    while (y < z) {
			    x = x + 1;
			    z = z - 1;
		    }
	    	y = x + y;
    	}
	}
return 0;
}

