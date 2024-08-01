int non_linear19(int x1, int x2, int x3) {
  while(x2 < x1 && x2 > 0) {
    x1 = 2*x1;
    x2 = 3*x2;
    x3 = x3*x3;
  }
  while(0 < x3) {
    x3 = x3 - 1;
  }
  return 0;
}
