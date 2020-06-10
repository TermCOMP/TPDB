extern int __VERIFIER_nondet_int(void);

int foo(int j,int i,int fac){
i = 1;
fac = 1;
while (fac != j) {
        fac = fac * i;
        i = i+1;
    }
return 0;
}

