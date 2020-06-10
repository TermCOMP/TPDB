extern int __VERIFIER_nondet_int(void);

int foo(int c,int i,int j){
c = 0;
while (i >= 0) {
        j = 0;
        while (j <= i - 1) {
            j = j + 1;
            c = c + 1;
        }
        i = i - 1;
    }
return 0;
}

