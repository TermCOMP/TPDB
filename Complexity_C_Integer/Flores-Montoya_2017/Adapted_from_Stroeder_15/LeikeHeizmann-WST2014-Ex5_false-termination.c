extern int __VERIFIER_nondet_int(void);

int foo(int a,int b,int olda){
while (a >= 7) {
		olda = a;
		a = b;
		b = olda + 1;
		
	}
return 0;
}

