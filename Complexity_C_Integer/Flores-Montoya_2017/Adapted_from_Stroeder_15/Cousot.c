extern int __VERIFIER_nondet_int(void);

int foo(int i,int j){
while (1) {
        if (i < j) {
            i = i+4;
        } else {
            j = j+1;
            i = i+2;
        }
    }
return 0;
}

