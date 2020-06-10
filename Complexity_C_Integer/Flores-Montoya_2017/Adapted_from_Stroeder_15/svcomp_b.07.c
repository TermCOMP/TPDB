extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y,int z){
c = 0;
while ((x > z) && (y > z)) {
        x = x - 1;
        y = y - 1;
        c = c + 1;
    }
return 0;
}

