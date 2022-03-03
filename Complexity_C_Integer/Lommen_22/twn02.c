int twn02(int a, int b, int c) {
  while(a < b*b && a > 0) {
    a = 5*a + c*c;
    b = 2*b;
  }
  return 0;
}
