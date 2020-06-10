extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int res,int min){
res = 0;
if (x < y) { min = x; }
    else { min = y; }
while (min == y) {
        y = y+1;
        res = res+1;
        if (x < y) { min = x; }
        else { min = y; }
    }
return 0;
}

