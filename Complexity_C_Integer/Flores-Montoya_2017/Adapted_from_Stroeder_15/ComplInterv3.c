extern int __VERIFIER_nondet_int(void);

int foo(int i){
while (i != 0) {
        if (i > 5) {
            i = i+1;
        } else {
            if (i < -5) {
                i = i-1;
            } else {
                i = 0;
            }
        }
    }
return 0;
}

