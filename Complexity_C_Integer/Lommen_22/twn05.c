int twn05(int a, int b, int c, int d, int e, int f) {
  if(f > 0) {
    a = d;
    b = e;
    while(f > 0) {
      while(c > 0) {
        a = a + c;
        c = c - 1;
      }
      while(a < b * b && a > 0) {
        a = 5 * a + c * c;
        b = 2 * b;
      }
      a = d;
      b = e;
      c = f;
      f = f - 1;
    }
  }
  return 0;
}
