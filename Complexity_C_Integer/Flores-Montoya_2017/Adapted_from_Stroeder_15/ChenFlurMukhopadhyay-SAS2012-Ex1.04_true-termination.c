extern int __VERIFIER_nondet_int(void);

int foo(int x,int oldx){
while (x > 1 && 2*x <= oldx) {
        oldx = x;
        x = __VERIFIER_nondet_int();
    }
return 0;
}

