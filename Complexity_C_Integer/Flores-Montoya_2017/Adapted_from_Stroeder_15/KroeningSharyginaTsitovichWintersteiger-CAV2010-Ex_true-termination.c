extern int __VERIFIER_nondet_int(void);

int foo(int i){
while (i < 255) {
		if (__VERIFIER_nondet_int() != 0) {
			i = i + 1;
		} else {
			i = i + 2;
		}
	}
return 0;
}

