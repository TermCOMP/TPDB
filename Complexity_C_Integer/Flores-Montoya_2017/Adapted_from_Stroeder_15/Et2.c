extern int __VERIFIER_nondet_int(void);

int foo(int a,int b,int r){
while (b > 0) {
        r =  __VERIFIER_nondet_int();
        b = a - 1 - r;
        a = a - 1 - r;
    }
return 0;
}
