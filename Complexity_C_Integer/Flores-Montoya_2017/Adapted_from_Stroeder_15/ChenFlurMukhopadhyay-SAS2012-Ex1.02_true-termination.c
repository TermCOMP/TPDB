extern int __VERIFIER_nondet_int(void);

int foo(int x,int oldx){
while (x > 0 && x < 100 && x >= 2*oldx + 10) {
        oldx = x;
        x = __VERIFIER_nondet_int();
    }
return 0;
}

