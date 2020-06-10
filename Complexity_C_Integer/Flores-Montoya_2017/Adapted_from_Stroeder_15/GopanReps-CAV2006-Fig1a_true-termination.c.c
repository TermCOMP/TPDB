extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
x = 0;
y = 0;
while (y >= 0) {
		if (x <= 50) {
			y = y + 1;
		} else {
			y = y - 1;
		}
		x = x + 1;
	}
return 0;
}

