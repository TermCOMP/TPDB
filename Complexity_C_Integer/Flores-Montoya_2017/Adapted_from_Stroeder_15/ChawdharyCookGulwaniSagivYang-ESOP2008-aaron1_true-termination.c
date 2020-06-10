extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int an,int bn){
while ((an >= i && bn >= j) || (an >= i && bn <= j) || (an <= i && bn >= j)) {
		if (an >= i && bn >= j) {
			if (__VERIFIER_nondet_int() != 0) {
				j = j + 1;
			} else {
				i = i + 1;
			}
		} else {if (an >= i && bn <= j) {
			i = i + 1;
		} else {if (an <= i && bn >= j) {
			j = j + 1;
		}}}
	}
return 0;
}

