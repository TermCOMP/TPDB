extern int __VERIFIER_nondet_int(void);

int foo(int x,int y){
while (x > 1) {
        
        y = x;
        while (y > 1) {
            y = y - 2;
        }
        if (y == 0) {
            
            while (2*y < x) {
                y = y + 1;
            }
            x = y;
        } else {
            x = 3*x + 1;
        }
    }
return 0;
}

