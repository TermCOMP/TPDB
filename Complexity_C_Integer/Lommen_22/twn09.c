int twn09(int a, int b, int c) {
  if(a > 0) {
    while(c > 0) {
        a = a + c;
        c = c - 1;
    }
    if(c <= 0) {
        while(a < b * b) {
            c = -2 * b;
            a = 5 * a;
            c = b + c;
            a = a + c * c * c * c;
            b = 2 * b;
            c = b + c;
        }
    }
  }
  return 0;
}
