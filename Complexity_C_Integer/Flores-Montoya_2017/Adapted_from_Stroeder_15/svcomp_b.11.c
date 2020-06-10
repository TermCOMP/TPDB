extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y){
c = 0;
while (x + y > 0) {
        if (x > y) {
            x = x - 1;
        } else {
            if (x == y) {
                x = x - 1;
            } else {
                y = y - 1;
            }
        }
        c = c + 1;
    }
return 0;
}

