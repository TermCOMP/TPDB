extern int __VERIFIER_nondet_int(void);

int non_linear11(int x1, int x2, int x3) {
  while(x1 > 0) {
    if(__VERIFIER_nondet_int()) {
        x1 = x1 - 1;
        x3 = x3 + x2*x2;
    } else {
        x1 = x1 - 1;
        x3 = x3 + x2*x2 + 1;
    }
  }
  while(x3 > 0) {
    x3 = x3 - 1;
  }
  return 0;
}
