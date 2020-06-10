extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int oldx){
while (4*x + y > 0) {
        oldx = x;
        x = -2*oldx + 4*y;
        y = 4*oldx;
    }
return 0;
}

