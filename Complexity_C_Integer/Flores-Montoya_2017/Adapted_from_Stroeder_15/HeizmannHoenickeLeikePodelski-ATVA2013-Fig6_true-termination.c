extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x >= 0 && y >= 1) {
		x = x - y;
		y = __VERIFIER_nondet_int();
	}
return 0;
}

