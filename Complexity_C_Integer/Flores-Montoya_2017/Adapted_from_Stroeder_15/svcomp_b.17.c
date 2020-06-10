extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y,int z){
c = 0;
while (x > z) {
        while (y > z) {
            y = y - 1;
            c = c + 1;
        }
        c = c + 1;
        x = x - 1;
    }
return 0;
}

