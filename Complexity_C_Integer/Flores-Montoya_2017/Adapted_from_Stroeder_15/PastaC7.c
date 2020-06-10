extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int k,int t){
while (i <= 100 && j <= k) {
        i = j;
        j = i + 1;
        k = k - 1;
    }
return 0;
}

