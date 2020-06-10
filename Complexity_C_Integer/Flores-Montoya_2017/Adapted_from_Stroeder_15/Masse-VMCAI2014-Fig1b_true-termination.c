extern int __VERIFIER_nondet_int(void);

int foo(int x){
while (x <= 100) {
		if (__VERIFIER_nondet_int() != 0) {
			x = -2*x + 2;
		} else {
			x = -3*x - 2;
		}
	}
return 0;
}

