extern int __VERIFIER_nondet_int(void);

int foo(int x){
while (x >= 0) {
		if (__VERIFIER_nondet_int() != 0) {
			x = x + 1;
		} else {if (__VERIFIER_nondet_int() != 0) {
			x = x + 2;
		} else {if (__VERIFIER_nondet_int() != 0) {
			x = x + 3;
		} else {if (__VERIFIER_nondet_int() != 0) {
			x = x + 4;
		} else {
			x = -1;
		}}}}
	}
return 0;
}

