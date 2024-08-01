extern int __VERIFIER_nondet_int(void);

int non_linear15(int x1, int x2) {
  while(x2 < x1 && x2 > 0) {
    if(__VERIFIER_nondet_int()) {
      x1 = 2*x1;
      x2 = 3*x2;
    } else {
      x1 = 2*x1;
      x2 = 4*x2;
    }
  }
  return 0;
}
