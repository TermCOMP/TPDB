extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
if (x + y > 1) {
        while (x > 0) {
            x = x + x + y;
            y = y - 1;
        }
    }
return 0;
}

