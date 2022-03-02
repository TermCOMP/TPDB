int twn04(int a, int b, int c, int d, int e) {
  if(d > 0) {
    a = d;
    b = e;
    while(c > 0) {
        while(a < b * b && a > 0) {
          a = 5 * a + c * c;
          b = 2 * b;
        }
        a = d;
        b = e;
        c = c - 1;
    }
  }
  return 0;
}
