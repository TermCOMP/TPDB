int non_linear18(int x1, int x2, int x3) {
  while(x3 > 0) {
    int x1_ = x1;
    int x2_ = x2;
    x1 = x1_ + 2*x2_;
    x2 = 3*x1_ + 4*x2_;
    x3 = x3 - 1;
  }
  while(x1 > 0) {
    x1 = x1 - 1;
  }
  return 0;
}
