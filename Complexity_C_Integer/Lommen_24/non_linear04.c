int non_linear04(int x1, int x2, int x3) {
  while((x3 < x1 || x3 < x2) && x3 > 0) {
    x1 = 2*x1;
    x2 = 3*x2;
    x3 = 4*x3;
  }
  return 0;
}
