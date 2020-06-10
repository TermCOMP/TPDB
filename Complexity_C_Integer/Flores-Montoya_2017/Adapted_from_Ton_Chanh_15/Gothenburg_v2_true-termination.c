extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int a,int b){
if (a == b + 1 && x < 0) {
	    while (x >= 0 || y >= 0) {
		    x = x + a - b - 1;
	    	y = y + b - a - 1;
    	}
	}
return 0;
}

