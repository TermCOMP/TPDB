extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int k,int an,int bn,int tk){
while (((an >= i && bn >= j) || (an >= i && bn <= j) || (an <= i && bn >= j)) && k >= tk + 1) {
		if (an >= i && bn >= j) {
			if (__VERIFIER_nondet_int() != 0) {
				j = j + k;
				tk = k;
				k = __VERIFIER_nondet_int();
			} else {
				i = i + 1;
			}
		} else {if (an >= i && bn <= j) {
			i = i + 1;
		} else {if (an <= i && bn >= j) {
			j = j + k;
			tk = k;
			k = __VERIFIER_nondet_int();
		}}}
	}
return 0;
}

