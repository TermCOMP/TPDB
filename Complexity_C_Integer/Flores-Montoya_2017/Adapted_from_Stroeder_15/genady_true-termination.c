extern int __VERIFIER_nondet_int(void);

int foo(int i,int j){
j = 1;
i = 10000;
while (i-j >= 1) {
        j = j + 1;
        i = i - 1;
    }
return 0;
}

