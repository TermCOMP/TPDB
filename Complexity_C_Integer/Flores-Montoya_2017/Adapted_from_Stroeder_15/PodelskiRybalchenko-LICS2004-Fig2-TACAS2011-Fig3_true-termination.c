extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int oldx,int oldy){
while (x > 0 && y > 0) {
		oldx = x;
		oldy = y;
		if (__VERIFIER_nondet_int() != 0) {
			x = oldx - 1;
			y = oldx;
		} else {
			x = oldy - 2;
			y = oldx + 1;
		}
	}
return 0;
}

