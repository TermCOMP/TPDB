extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x - y > 0) {
        x = y - x;
        y = y + 1;
    }
return 0;
}

