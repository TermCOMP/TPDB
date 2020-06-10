extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x>0 && y>0) {
        if (__VERIFIER_nondet_int() != 0) {
            x = x - 1;
        } else {
            x = __VERIFIER_nondet_int();
            y = y - 1;
        }
    }
return 0;
}

