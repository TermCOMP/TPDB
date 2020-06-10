extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int n){
while (x > 0 && x < n) {
        x = -x + y - 5;
        y = 2*y;
    }
return 0;
}

