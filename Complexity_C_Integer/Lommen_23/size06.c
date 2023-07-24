int size06(int a, int b, int c) {
  if(a > 0) {
    while(c > 0) {
      a = a + c;
      c = c - 1;
    }
    while(a < b*b) {
      a = a + c*c;
      b = b + 1;
      c = c + 1;
    }
    while(a > 0) {
      a = a - 1;
    }
  }
  return 0;
}
