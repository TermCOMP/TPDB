extern int __VERIFIER_nondet_int(void);

int foo(int x,int xtmp,int res,int restmp){
res = 0;
while (x > 1) {
        xtmp = x;
        restmp = 0;
        
        while (xtmp > 1) {
            xtmp = xtmp-2;
            restmp = restmp+1;
        }
        
        x = xtmp;
        res = res+1;
        
    }
return 0;
}

