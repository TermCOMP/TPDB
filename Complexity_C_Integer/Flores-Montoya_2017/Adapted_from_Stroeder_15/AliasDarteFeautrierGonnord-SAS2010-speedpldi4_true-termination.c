extern int __VERIFIER_nondet_int(void);

int foo(int i,int m,int n){
if (m > 0 && n > m) {
		i = n;
		while (i > 0) {
			if (i < m) {
				i = i - 1;
			} else {
				i = i - m;
            }
		}
	}
return 0;
}

