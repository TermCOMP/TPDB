extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z,int oldx){
while (x > 0 && x < y && x > 2*oldx) {
        oldx = x;
        x = __VERIFIER_nondet_int();
        y = z;
    }
return 0;
}

