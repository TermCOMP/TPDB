extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int n,int b){
while (x >= 0 && 0 <= y && y <= n) {
		if (b == 0) {
			y = y + 1;
			if (__VERIFIER_nondet_int() != 0) {
				b = 1;
            }
		} else {
			y = y - 1;
			if (__VERIFIER_nondet_int() != 0) {
				x = x - 1;
				b = 0;
			}
		}
	}
return 0;
}

