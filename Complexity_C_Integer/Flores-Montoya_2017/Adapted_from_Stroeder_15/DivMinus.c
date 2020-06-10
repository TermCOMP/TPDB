extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int res){
res = 0;
while (x >= y && y > 0) {
      x = x-y;
      res = res + 1;
    }
return 0;
}

