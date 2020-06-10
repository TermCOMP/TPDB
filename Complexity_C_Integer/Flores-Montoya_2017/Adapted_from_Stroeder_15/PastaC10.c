extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int r){
while (i - j >= 1) {
        i = i - __VERIFIER_nondet_int();
        r = __VERIFIER_nondet_int() + 1;
        j = j + r;
    }
return 0;
}

