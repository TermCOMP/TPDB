extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
y = 100;
z = 1;
while (x >= 0) {
		x = x - y;
		y = y - z;
		z = -z;
	}
return 0;
}

