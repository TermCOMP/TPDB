extern int __VERIFIER_nondet_int(void);

int foo(int x,int tmp){
while ((x > 0) && (x == 2*tmp)) {
        x = x - 1;
        tmp = __VERIFIER_nondet_int();
    }
return 0;
}

