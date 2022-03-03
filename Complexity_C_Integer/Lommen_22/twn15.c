int twn15(int a, int b, int c, int d, int e) {
  while(a > 0) {
    b = a;
    c = e;
    if(-5 <= d && d <= 5) {
      while (b != 0 && b*b + d*d*d*d*d < c) {
        b = -2*b;
        c = 3*c - d*d*d;
      }
    }
    else if (d > 0) {
      while (b != 0 && b*b + d*d*d*d*d < c) {
        b = -2*b;
        c = 3*c - d*d*d;
      }
    }
    a = a - 1;
  }
  return 0;
}
