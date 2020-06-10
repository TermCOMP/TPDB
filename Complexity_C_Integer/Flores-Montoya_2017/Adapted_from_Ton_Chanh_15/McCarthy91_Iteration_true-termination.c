extern int __VERIFIER_nondet_int(void);

int foo(int c,int n){
c = 1;
while (c > 0) {
    if (n > 100) {
      n = n - 10;
      c = c - 1;
    } else {
      n = n + 11;
      c = c + 1;
    }
  }
return 0;
}

