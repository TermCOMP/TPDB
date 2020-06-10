extern int __VERIFIER_nondet_int(void);

int foo(int a,int b){
a = - __VERIFIER_nondet_int();
b = - __VERIFIER_nondet_int();
while (a > b) {
        b = b + a;
        a = a + 1;
    }
return 0;
}

