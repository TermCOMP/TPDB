extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
while (x >= 0 && x + y >= 0) {
        x = x + y + z;
        y = -z - 1;
    }
return 0;
}

