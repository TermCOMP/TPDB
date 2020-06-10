extern int __VERIFIER_nondet_int(void);

int foo(int x){
while (x!=0) {
	    if (-5 <= x && x <= 35) {
		    if (x < 0) {
			    x = -5;
			} else {
			    if (x > 30) {
				    x = 35;
				} else {
					x = x - 1;
				}
			}
		} else {
		    x = 0;
		}
	}
return 0;
}

