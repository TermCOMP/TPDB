int non_linear13(int x1, int x2, int x3) {
  while(x1 > 0) {
    x1 = x1 - 1;
    x2 = 2*x2;
  }
  while(x3 < x2 && x3 > 0) {
    x2 = 2*x2;
    x3 = 3*x3;
  }
  return 0;
}
