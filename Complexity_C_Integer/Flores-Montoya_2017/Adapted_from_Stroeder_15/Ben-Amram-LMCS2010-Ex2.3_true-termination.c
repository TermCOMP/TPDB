extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
while (x > 0 && y > 0 && z > 0) {
		if (y > x) {
			y = z;
			x = __VERIFIER_nondet_int();
			z = x - 1;
		} else {
			z = z - 1;
			x = __VERIFIER_nondet_int();
			y = x - 1;
		}
	}
return 0;
}

