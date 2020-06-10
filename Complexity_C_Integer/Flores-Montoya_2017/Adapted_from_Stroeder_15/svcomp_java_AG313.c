extern int __VERIFIER_nondet_int(void);

int foo(int i,int x,int y){
i = 0;
if (x!=0) {
        while (x > 0 && y > 0) {
            i = i + 1;
            x = (x - 1)- (y - 1);
        }
    }
return 0;
}

