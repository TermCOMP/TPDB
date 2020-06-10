extern int __VERIFIER_nondet_int(void);

int foo(int q,int y){
while (q > 0) {
		if (y > 0) {
			y = 0;
			q = __VERIFIER_nondet_int();
		} else {
			y = y - 1;
			q = q - 1;
		}
	}
return 0;
}

