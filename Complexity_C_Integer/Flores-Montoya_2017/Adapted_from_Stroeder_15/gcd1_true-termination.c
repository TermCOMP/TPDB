extern int __VERIFIER_nondet_int(void);

int foo(int r,int x,int y){
if (x<0) {x = -x;}
if (y<0) {y = -y;}
while (y>0) {
		
		r = x;
		while (r>=y) {
			r = r-y;
        }
		
		x = y;
		y = r;
	}
return 0;
}

