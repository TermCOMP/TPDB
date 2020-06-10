extern int __VERIFIER_nondet_int(void);

int foo(int k,int i,int j,int n){
if (k >= 1) {
		i = 0;
		while (i < n) {
			j = 0;
			while (j <= i) {
				j = j + k;
			}
			i = i + 1;
		}
	}
return 0;
}

