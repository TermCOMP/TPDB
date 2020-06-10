extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x < y) {
        x = x + y;
        y = -2*y;
    }
return 0;
}

