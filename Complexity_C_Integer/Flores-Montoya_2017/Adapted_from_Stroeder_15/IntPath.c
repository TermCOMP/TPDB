extern int __VERIFIER_nondet_int(void);

int foo(int i,int x,int y){
x = 0;
y = 0;
if (i > 10) {
        x = 1;
    } else {
        y = 1;
    }
while (x == y) { }
return 0;
}

