extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int oldx){
while (x >= 0 || y >= 0) {
		oldx = x;
		x = y - 1;
		y = oldx - 1;
	}
return 0;
}

