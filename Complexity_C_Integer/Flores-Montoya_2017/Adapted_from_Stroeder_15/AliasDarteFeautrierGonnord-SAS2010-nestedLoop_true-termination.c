extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int k,int m,int n,int N){
if (0 <= n && 0 <= m && 0 <= N) {
		i = 0;
		while (i < n) {
			j = 0;
			while (j < m) {
				j = j + 1;
				k = i;
				while (k < N) {
					k = k + 1;
                }
				i = k;
			}
			i = i + 1;
		}
	}
return 0;
}

