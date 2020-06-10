extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int tmp,int xtmp){
while(y > 0 && x > 0) {
        tmp = y;
        xtmp = x;
        
        while(xtmp>=y && y > 0) {
            xtmp = xtmp - y;
        }
        
        y = xtmp;
        x = tmp;
    }
return 0;
}
