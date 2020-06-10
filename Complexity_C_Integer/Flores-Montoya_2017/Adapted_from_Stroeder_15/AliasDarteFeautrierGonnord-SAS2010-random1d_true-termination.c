extern int __VERIFIER_nondet_int(void);

int foo(int a,int x,int max){
if (max > 0) {
		a = 0;
		x = 1;
		while (x <= max) {
			if (__VERIFIER_nondet_int() != 0) {
				a = a + 1;
			} else {
				a = a - 1;
            }
			x = x + 1;
		}
	}
return 0;
}

