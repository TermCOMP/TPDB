extern int __VERIFIER_nondet_int(void);

int foo(int m,int n,int v1,int v2){
if (n >= 0 && m > 0) {
		v1 = n;
		v2 = 0;
		while (v1 > 0) {
			if (v2 < m) {
				v2 = v2 + 1;
				v1 = v1 - 1;
			} else {
				v2 = 0;
			}
		}
	}
return 0;
}

