extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z,int n){
while (x + y >= 0 && x <= n) {
        x = 2*x + y;
        y = z;
        z = z;
        z = z + 1;
    }
return 0;
}

