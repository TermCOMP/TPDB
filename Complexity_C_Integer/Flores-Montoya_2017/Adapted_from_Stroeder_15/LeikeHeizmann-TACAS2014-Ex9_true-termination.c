extern int __VERIFIER_nondet_int(void);

int foo(int p,int q){
while (q > 0 && p > 0 && p != q) {
		if (q < p) {
			q = q - 1;
		} else {
			if (p < q) {
				p = p - 1;
			}
		}
	}
return 0;
}

