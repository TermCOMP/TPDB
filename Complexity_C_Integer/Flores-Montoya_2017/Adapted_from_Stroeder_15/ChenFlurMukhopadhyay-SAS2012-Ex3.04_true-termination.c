extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
while (x + y >= 0 && x <= z) {
        x = 2*x + y;
        y = y + 1;
    }
return 0;
}

