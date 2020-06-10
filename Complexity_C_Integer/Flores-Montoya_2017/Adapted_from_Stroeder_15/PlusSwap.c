extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z,int res){
res = 0;
while (y > 0) {
        z = x;
        x = y-1;
        y = z;
        res = res+1;
    }
res = res + x;
return 0;
}

