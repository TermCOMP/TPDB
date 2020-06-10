extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z,int i){
while (x < y) {
		i = i + 1;
		if (z > x) {
			x = x + 1;
		} else {
			z = z + 1;
		}
	}
return 0;
}

