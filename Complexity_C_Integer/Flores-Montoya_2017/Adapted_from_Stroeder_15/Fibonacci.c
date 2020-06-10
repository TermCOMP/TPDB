extern int __VERIFIER_nondet_int(void);

int foo(int n,int i,int j,int t){
i = 0;
j = 1;
t = 0;
while (j != n) {
        t = j+i;
        i = j;
        j = t;
    }
return 0;
}

