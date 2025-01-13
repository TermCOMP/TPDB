int non_linear02(int x1, int x2, int x3, int x4, int x5) {
  while(x4*x4 - x3*x3*x3*x3*x3 < x5 && x4 != 0) {
    x1 = -1*x1;
    x2 = -1*x2;
    x4 = 4*x4;
    x5 = 9*x5 + x3*x3;
  }
  return 0;
}
