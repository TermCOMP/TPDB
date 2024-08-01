extern int __VERIFIER_nondet_int(void);

int non_linear10(int x1, int x2, int x3, int x4, int y1, int y2, int x6) {
  int y = 1;

  while(0 < y && y <= x6) {
    x1 = x6;
    x2 = x6;
    x3 = 2;
    x4 = x3;
    y1 = x6;
    y2 = x6;
    x6 = x6 - y;
    int y = __VERIFIER_nondet_int();
    while(x4*x4 - x3*x3*x3*x3*x3 < 2*y1 - y2 && x4 != 0) {
      int x1_ = x1;
      int x2_ = x2;
      x1 = 3*x1_ + 2*x2_;
      x2 = -5*x1_ -3*x2_;
      x4 = -2*x4;
      int y1_ = y1;
      int y2_ = y2;
      y1 = y1_ + y1_*y1_ + x3*x3;
      y2 = -4*y1_ + 2*y1_*y1_ + 3*y2_ + x3*x3;
    }
  }
  x6 = x1;
  while(x6 > 0) {
    x6 = x6 - 1;
  }
  return 0;
}
