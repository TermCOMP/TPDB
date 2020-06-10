extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int oldx){
while (x < 5) {
        oldx = x;
        x = oldx - y;
        y = oldx + y;
    }
return 0;
}

