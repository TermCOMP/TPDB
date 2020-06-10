extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int n){
while (i < n) {
        j = 0;
        while (j <= i) {
            j = j + 1;
        }
        i = i + 1;
    }
return 0;
}

