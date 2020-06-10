extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
while (x >= y) {
		if (__VERIFIER_nondet_int() != 0) {
			x = x + 1;
			y = y + x;
		} else {
			x = x - z;
			y = y + (z * z);
			z = z - 1;
		}
	}
return 0;
}

