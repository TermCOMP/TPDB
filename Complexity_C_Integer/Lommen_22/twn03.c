int twn03(int a, int b, int c) {
  if(a > 0) {
    while(c > 0) {
      a = a + c;
      c = c - 1;
    }
    while(a < b * b) {
      a = 5 * a + c * c;
      b = 2 * b;
    }
  }
  return 0;
}
