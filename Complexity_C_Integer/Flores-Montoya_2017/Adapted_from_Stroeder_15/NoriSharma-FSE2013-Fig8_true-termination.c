extern int __VERIFIER_nondet_int(void);

int foo(int c,int u,int v,int w,int x,int y,int z){
u = x;
v = y;
w = z;
c = 0;
while (x >= y) {
    	c = c + 1;
    	if (z > 1) {
    		z = z - 1;
    		x = x + z;
    	} else {
    		y = y + 1;
    	}
    }
return 0;
}

