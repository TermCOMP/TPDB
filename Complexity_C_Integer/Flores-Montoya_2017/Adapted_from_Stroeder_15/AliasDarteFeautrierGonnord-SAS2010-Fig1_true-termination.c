extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int m){
y = 0;
x = m;
while (x >= 0 && y >= 0) {
		if (__VERIFIER_nondet_int() != 0) {
			while (y <= m && __VERIFIER_nondet_int() != 0) {
				y = y + 1;
			}
			x = x - 1;
		}
		y = y - 1;
	}
return 0;
}

