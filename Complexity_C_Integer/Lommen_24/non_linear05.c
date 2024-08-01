int non_linear05(int x1, int x2) {
  while(3*x1 < 2*x2 && x2 < 2*x1) {
    int x1_ = x1;
    int x2_ = x2;
    x1 = 4*x1_ - x2_;
    x2 = 2*x1_ + x2_;
  }
  return 0;
}
