extern int __VERIFIER_nondet_int(void);

int foo(int c,int flag,int x,int y,int z){
c = 0;
flag = 1;
while ((y < z) && (flag > 0)) {
        if ((y > 0) && (x > 1)) {
            y = x*y;
        } else {
            if ((y > 0) && (x < -1)) {
                y = -x*y;
            } else {
                flag = 0;
            }
        }
        c = c + 1;
    }
return 0;
}

