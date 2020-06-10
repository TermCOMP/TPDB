extern int __VERIFIER_nondet_int(void);

int foo(int i,int j,int t){
t = 0;
while (i != 0 && j != 0) {
        t = i;
        i = j;
        j = t;
    }
return 0;
}

