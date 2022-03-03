int twn19(int a, int b, int c) {
  if(c > 0) {
    while(a*a + c*c*c*c*c < b && a != 0) {
      a = -2*a;
      b = 3*b - 2*c*c*c;
      c = c;
    }
  }
  return 0;
}
