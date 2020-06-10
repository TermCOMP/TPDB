extern int __VERIFIER_nondet_int(void);

int foo(int oldx,int x,int y){
while (1) {
        oldx = x;
		x = -y;
		y = oldx;
	}
return 0;
}

