extern int __VERIFIER_nondet_int(void);

int foo(int y,int z){
while (z >= 0) {
		y = y - 1;
		if (y >= 0) {
			z = __VERIFIER_nondet_int();
		} else {
			z = z - 1;
		}
	}
return 0;
}

