extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int tmp,int xtmp){
while((y != 0 && x >= 0) && y >= 0) {
        tmp = y;
        xtmp = x;
        
        if (x == y) {
            y = 0;
        }
        else {
            while(xtmp>y) {
                xtmp = xtmp - y;
            }
        }
        
        y = xtmp;
        x = tmp;
    }
return 0;
}

