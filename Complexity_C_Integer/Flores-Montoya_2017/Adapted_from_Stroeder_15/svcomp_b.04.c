extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int tmp){
while (x > y) {
        tmp = x;
        x = y;
        y = tmp;
    }
return 0;
}

