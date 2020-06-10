extern int __VERIFIER_nondet_int(void);

int foo(int flag,int c,int x,int y){
flag = 1;
c = 0;
while (flag != 0) {
        if (x >= y) {
            flag = 0;
        }
        x = x + 1;
        c = c + 1;
    }
return 0;
}

