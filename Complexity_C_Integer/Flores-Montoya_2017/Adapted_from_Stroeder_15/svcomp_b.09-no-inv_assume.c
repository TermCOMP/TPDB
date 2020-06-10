extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y){
c = 0;
if (x > 0 && y > 0) {
        while (!(x == 0)) {
            if (x > y) {
                x = y;
            } else {
                x = x - 1;
            }
            c = c + 1;
        }
    }
return 0;
}

