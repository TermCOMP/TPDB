extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x >= 0 && y >= 0) {
		y = y - 1;
		if (y < 0) {
			x = x - 1;
			y = __VERIFIER_nondet_int();
		}
	}
return 0;
}

