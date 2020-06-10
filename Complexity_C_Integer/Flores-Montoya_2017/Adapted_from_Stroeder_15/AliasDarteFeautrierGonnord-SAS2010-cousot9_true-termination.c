extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int N){
i = N;
while (i > 0) {
		if (j > 0) {
			j = j - 1;
		} else {
			j = N;
			i = i - 1;
		}
	}
return 0;
}

