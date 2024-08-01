extern int __VERIFIER_nondet_int(void);

int non_linear20(int x1, int x2) {
  int t = __VERIFIER_nondet_int();
  while(x2 < x1 && x2 > 0 && t >= 3) {
    x1 = 2*x1;
    x2 = t*x2;
    int t = __VERIFIER_nondet_int();
  }
  return 0;
}
