int twn06(int a, int b, int c, int d, int e, int f) {
  if(d > 0) {
    a = d;
    b = e;
    while(c > 0) {
      while(c > 0) {
        a = a + c;
        c = c - 1;
      }
      c = f;
      while(b*b > 1 && a*c + 2*a > 0) {
          a = a;
          int b1 = b;
          int c1 = c;
          b = 3*b1 - 4*c1;
          c = 4*b1 - 3*c1;
          d = 5*d;
          e = 5*e - a*a;
      }
      a = d;
      b = e;
      f = f - 1;
    }
  }
  return 0;
}
