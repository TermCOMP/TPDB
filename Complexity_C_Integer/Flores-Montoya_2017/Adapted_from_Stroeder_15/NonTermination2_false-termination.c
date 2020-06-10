extern int __VERIFIER_nondet_int(void);

int foo(int x,int oldx){
while (x > 1 && x >= 2*oldx) {
		oldx = x;
		x = __VERIFIER_nondet_int();
	}
return 0;
}

