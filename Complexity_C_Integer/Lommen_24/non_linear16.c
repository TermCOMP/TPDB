extern int __VERIFIER_nondet_int(void);

int non_linear16(int x1, int x2, int y1, int y2) {
  while(x2 < x1 && x2 > 0) {
    x1 = 2*x1;
    x2 = 3*x2;
  }
  int t = __VERIFIER_nondet_int();
  while(y1 > 0 && t > 0) {
    y1 = y1 + y2;
    y2 = y2 - t;
    t = __VERIFIER_nondet_int();
  }
  return 0;
}
