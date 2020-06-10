extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x >= 0 && y > 0) {
        y = 1;
        while (x > y && y > 0) {
            y = 2*y;
        }
        x = x - 1;
    }
return 0;
}

