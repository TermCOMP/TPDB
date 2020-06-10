extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z,int tx){
while (x >= y && x <= tx + z) {
		if (__VERIFIER_nondet_int() != 0) {
			z = z - 1;
			tx = x;
			x = __VERIFIER_nondet_int();
		} else {
			y = y + 1;
		}
	}
return 0;
}

