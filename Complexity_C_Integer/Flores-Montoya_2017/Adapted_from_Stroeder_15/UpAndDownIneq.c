extern int __VERIFIER_nondet_int(void);

int foo(int i,int up){
up = 0;
while (0 <= i && i <= 10) {
        if (i >= 10) {
            up = 0;
        }
        if (i <= 0) {
            up = 1;
        }
        if (up >= 1) {
            i = i+1;
        } else {
            i = i-1;
        }
    }
return 0;
}

