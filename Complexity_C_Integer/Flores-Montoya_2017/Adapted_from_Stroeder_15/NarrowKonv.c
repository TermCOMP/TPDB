extern int __VERIFIER_nondet_int(void);

int foo(int i,int range){
range = 20;
while (0 <= i && i <= range) {
        if (!(0 == i && i == range)) {
            if (i == range) {
                i = 0;
                range = range-1;
            } else {
                i = i+1;
            }
        }
    }
return 0;
}

