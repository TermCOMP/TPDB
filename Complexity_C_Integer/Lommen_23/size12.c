extern int __VERIFIER_nondet_int(void);

int size12(int a, int b, int c, int d) {
  int t1 = a;
  int t2 = 0;
  while(t1 > 0) {
    t1 = t1 - 1;
    t2 = b + c;
    while(t2 > 0) {
      t2 = t2 - 1;
      int u = __VERIFIER_nondet_int();
      if(u > 0) {
        c = a;
        b = d;
      } else {
        c = d;
        b = a;
      }
    }
    d = b + c;
  }
  while(d > 0) {
    d = d - 1;
    int u = __VERIFIER_nondet_int();
    if(u > 0) {
      c = a + b + c;
    } else {
      c = b;
      b = a;
    }
  }
  return 0;
}
