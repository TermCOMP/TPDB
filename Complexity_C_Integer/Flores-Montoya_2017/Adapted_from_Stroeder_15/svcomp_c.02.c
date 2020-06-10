extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y){
c = 0;
while (x >= 0) {
        x = x + 1;
        y = 1;
        while (x > y) {
            y = y + 1;
            c = c + 1;
        }
        x = x - 2;
    }
return 0;
}

