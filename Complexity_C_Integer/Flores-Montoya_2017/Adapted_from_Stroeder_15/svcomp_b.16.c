extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y){
c = 0;
while (x > 0) {
        while (y > 0) {
            y = y - 1;
            c = c + 1;
        }
        x = x - 1;
        c = c + 1;
    }
return 0;
}

