int size07(int a, int b, int c, int d) {
  while(a > 0) {
    a = a - 1;
    int b_ = b;
    int c_ = c;
    b = 3*b_ + c_;
    c = -6*b_ - 2*c_;
    d = d + 2*a*a;
  }
  while(b + d > 0) {
    b = b - 1;
    d = d - 1;
  }
  return 0;
}
