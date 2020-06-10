extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int n){
while (x >= 0) {
		while (y >= 0 && __VERIFIER_nondet_int() != 0) {
			y = y - 1;
        }
		x = x - 1;
		while (y <= n && __VERIFIER_nondet_int() != 0) {
			y = y + 1;
        }
	}
return 0;
}

