extern int __VERIFIER_nondet_int(void);

int foo(int c,int i,int j,int k,int tmp){
c = 0;
while ((i <= 100) && (j <= k)) {
        tmp = i;
        i = j;
        j = tmp + 1;
        k = k - 1;
        c = c + 1;
    }
return 0;
}

