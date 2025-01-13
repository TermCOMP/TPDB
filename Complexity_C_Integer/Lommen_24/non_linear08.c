int non_linear08(int y1, int y2, int z1, int z2, int x3) {
  while((x3 < y1 + 2*y2 || x3 < z1 - z2) && x3 > 0) {
    int y1_ = y1;
    int y2_ = y2;
    int z1_ = z1;
    int z2_ = z2;
    y1 = 2*y1_*y1_ + 2*y1_;
    y2 = 2*y2_ - y1_*y1_;
    z1 = z1_*z1_+z1_ - 3*z2_;
    z2 = z1_*z1_+z1_ - 3*z1_;
    x3 = 4*x3;
  }
  return 0;
}
