extern int __VERIFIER_nondet_int(void);

int foo(int r,int da,int db,int temp){
if (r >= 0) {
		da = 2 * r;
		db = 2 * r;
		while (da >= r) {
			if (__VERIFIER_nondet_int() != 0) {
				da = da - 1;
			} else {
				temp = da;
				da = db - 1;
				db = da;
			}
		}
	}
return 0;
}

