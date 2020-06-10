extern int __VERIFIER_nondet_int(void);

int foo(int x,int M){
if (M > 0) {
		while (x != M) {
			if (x > M) {
				x = 0;
			} else {
				x = x + 1;
            }
		}
	}
return 0;
}

