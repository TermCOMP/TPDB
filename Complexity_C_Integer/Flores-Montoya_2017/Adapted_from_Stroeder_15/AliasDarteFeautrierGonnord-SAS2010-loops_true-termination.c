extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int n){
x = n;
if (x >= 0) {
		while (x >= 0) {
			y = 1;
			if (y < x) {
				while (y < x) {
					y = 2*y;
                }
			}
			x = x - 1;
		}
	}
return 0;
}

