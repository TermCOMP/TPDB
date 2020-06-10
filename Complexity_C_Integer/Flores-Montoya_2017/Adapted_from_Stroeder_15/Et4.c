extern int __VERIFIER_nondet_int(void);

int foo(int a,int b,int c,int r){
while ( (b - c >= 1) && (a == c)) {
        r = __VERIFIER_nondet_int();
        b = 10;
        c = c + 1 + r;
        a = c;
    }
return 0;
}

