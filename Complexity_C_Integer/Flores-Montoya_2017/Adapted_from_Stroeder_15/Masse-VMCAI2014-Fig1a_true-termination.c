extern int __VERIFIER_nondet_int(void);

int foo(int a,int b){
while (a >= 0) {
		a = a + b;
		if (b >= 0) {
			b = -b - 1;
		} else {
			b = -b;
		}
	}
return 0;
}

