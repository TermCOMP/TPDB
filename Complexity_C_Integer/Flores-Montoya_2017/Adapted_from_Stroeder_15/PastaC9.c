extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int random){
while (x > 0 && y > 0) {
        random = __VERIFIER_nondet_int();
        if (random < 42) {
            x = x-1;
            random = __VERIFIER_nondet_int();
            y = random;
        } else {
            y = y-1;
        }
    }
return 0;
}

