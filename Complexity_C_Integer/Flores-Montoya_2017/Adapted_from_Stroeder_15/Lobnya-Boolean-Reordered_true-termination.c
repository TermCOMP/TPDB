extern int __VERIFIER_nondet_int(void);

int foo(int x,int b){
while (b != 0) {
		b = __VERIFIER_nondet_int();
		x = x - 1;
        if (x >= 0) {
            b = 1;
        } else {
            b = 0;
        }
	}
return 0;
}

