extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int m,int n){
if (m > 0 && n > m) {
		i = 0;
		j = 0;
		while (i < n) {
			if (j < m) {
				j = j + 1;
			} else {
				j = 0;
				i = i + 1;
			}
		}
	}
return 0;
}

