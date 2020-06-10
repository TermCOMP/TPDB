extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int t){
while (x > y) {
        t = x;
        x = y;
        y = t;
    }
return 0;
}

