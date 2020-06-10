extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int k,int ell){
while (i <= 100 && j <= k) {
		ell = i;
		i = j;
		j = ell + 1;
		k = k - 1;
	}
return 0;
}

