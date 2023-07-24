int size05(int a, int b, int c) {
  while(a > 0 && c != 0) {
    a = a - b*b;
    b = b + c*c;
  }
  while(b > 0) {
    b = b - 1;
  }
  return 0;
}
