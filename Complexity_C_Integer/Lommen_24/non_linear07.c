int non_linear07(int y1, int y2, int x2, int x3) {
  while((x3 < y1 + 2*y2 || x3 < x2) && x3 > 0) {
    int y1_ = y1;
    int y2_ = y2;
    y1 = 2*y1_*y1_ + 2*y1_;
    y2 = 2*y2_ - y1_*y1_;
    x2 = 3*x2;
    x3 = 4*x3;
  }
  return 0;
}
