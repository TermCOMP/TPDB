extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y){
c = 0;
while (x >= 0) {
        y = 1;
        while (x > y) {
            y = 2*y;
            c = c + 1;
        }
        x = x - 1;
    }
return 0;
}

