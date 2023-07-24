extern int __VERIFIER_nondet_int(void);

int size11(int a, int b, int c, int d, int e) {
  while(e > 0) {
    e = e - 1;
    int u = __VERIFIER_nondet_int();
    if(u > 0) {
      c = a + b;
      d = b;
    } else {
      c = b;
      d = a + b;
    }
    a = c + d;
  }
  while(a > 0) {
    a = a - 1;
  }
  return 0;
}
