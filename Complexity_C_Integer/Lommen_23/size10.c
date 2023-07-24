int size10(int a, int b, int c, int d, int e) {
  if(a > 0 && e > 0) {
    while(e > 0) {
      while(a > 0) {
        a = a - 1;
        int b_ = b;
        int c_ = c;
        b = 3*b_ + 2*c_;
        c = -5*b_ -3*c_;
        d = a*a + d;
      }
      while(b + d > 0) {
        b = b - 1;
        d = d - 1;
      }
      a = e;
      b = 2*e;
      c = 3*e;
      d = a;
      e = e - 1;
    }
  }
  return 0;
}
