extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x > y && y >= 1 && y <= 2) {
        x = x - y;
        y = __VERIFIER_nondet_int();
    }
return 0;
}

