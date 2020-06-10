extern int __VERIFIER_nondet_int(void);

int foo(int a,int b,int x,int y){
if (a == b) {
	    while (x >= 0 || y >= 0) {
		    x = x + a - b - 1;
	    	y = y + b - a - 1;
    	}
	}
return 0;
}

