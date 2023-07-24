int size08(int a, int b, int c) {
  if (c < 0) {
    while(a + b*b > 0) {
        a = a + b*b*c;
        b = b - 2*c*c;
        c = c;
      }
    }
    b = b*b;
    while(b > 0) {
      b = b - 1;
    }
    return 0;
}
