extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x != y) {
        if (x > y) {
            y = y+1;
        } else {
            x = x+1;
        }
    }
return 0;
}

