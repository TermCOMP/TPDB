extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x >= 0) {
		y = 1;
		while (y < x) {
			y = y + 1;
		}
		x = x - 1;
	}
return 0;
}

