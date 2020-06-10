extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
while (x > 0) {
		x = x + y;
		y = z;
		z = -z -1;
	}
return 0;
}

