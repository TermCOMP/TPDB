int twn20(int a, int b, int c) {
  if(c > 0) {
    while(a*a + c*c*c*c*c < b && a != 0) {
      a = 4*a;
      b = 9*b - 8*c*c*c;
      c = c;
    }
  }
  return 0;
}
