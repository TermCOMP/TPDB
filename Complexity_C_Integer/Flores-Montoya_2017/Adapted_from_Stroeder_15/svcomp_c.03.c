extern int __VERIFIER_nondet_int(void);

int foo(int c,int x,int y,int z){
c = 0;
while (x < y) {
        if (x < z) {
            x = x + 1;
        } else {
            z = z + 1;
        }
        c = c + 1;
    }
return 0;
}



