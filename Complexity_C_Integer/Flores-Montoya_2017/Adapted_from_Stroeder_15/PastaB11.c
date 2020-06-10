extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x + y > 0) {
        if (x > y) {
            x = x-1;
        } else {
            if (x == y) {
                x = x-1;
            } else {
                y = y-1;
            }
        }
    }
return 0;
}

