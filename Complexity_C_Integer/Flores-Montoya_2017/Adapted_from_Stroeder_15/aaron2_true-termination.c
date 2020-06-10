extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int tx){
while (x >= y && tx >= 0) {
		if (__VERIFIER_nondet_int() != 0) {
			x = x - 1 - tx;
		} else {
			y = y + 1 + tx;
		}
	}
return 0;
}

