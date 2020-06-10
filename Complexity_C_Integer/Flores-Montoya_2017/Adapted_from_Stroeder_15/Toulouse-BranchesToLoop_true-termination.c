extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
if (__VERIFIER_nondet_int() != 0) {
        x = 1;
    } else {
        x = -1;
    }
while (y<100 && z<100) {
        y = y+x;
        z = z-x;
    }
return 0;
}

