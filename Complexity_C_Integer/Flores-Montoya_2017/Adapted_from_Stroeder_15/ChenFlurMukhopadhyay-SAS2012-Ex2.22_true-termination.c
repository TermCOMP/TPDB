extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int oldy){
while (x > 0 && y <= -oldy) {
        x = y;
        oldy = y;
        y = __VERIFIER_nondet_int();
    }
return 0;
}

