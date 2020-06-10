extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x >= 2) {
		x = x - 1;
        y = y + x;
		while (y >= x && __VERIFIER_nondet_int() != 0) {
			y = y - 1;
		}
		x = x - 1;
        y = y - x;
	}
return 0;
}

