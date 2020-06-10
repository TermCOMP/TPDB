extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y){
c = 0;
while (!(x == y)) {
        if (x > y) {
            y = y + 1;
        } else {
            x = x + 1;
        }
        c = c + 1;
    }
return 0;
}

