extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int res){
res = 0;
while (x > y) {
        y = x+1;
        res = res+1;
    }
return 0;
}


