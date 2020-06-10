extern int __VERIFIER_nondet_int(void);

int foo(int n,int sum){
sum = 0;
while (n != 0) {
        sum = sum + n;
        n = n - 1;
    }
return 0;
}

