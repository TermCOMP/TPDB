extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y,int z){
c = 0;
while ((x > y) && (x > z)) {
        y = y + 1;
        z = z + 1;
        c = c + 1;
    }
return 0;
}

