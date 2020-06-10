extern int __VERIFIER_nondet_int(void);

int foo(int x,int c){
c = 1;
while (c > 0) {
        if (x > 100) {
            x = x-10;
            c = c-1;
        } else {
            x = x+11;
            c = c+1;
        }
    }
return 0;
}
