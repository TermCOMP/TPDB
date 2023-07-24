int size13(int a, int b, int c, int d) {
  int t1 = a;
  int t2 = 0;
  int t3 = 0;
  while(t1 > 0) {
    t1 = t1 - 1;
    t2 = b + c;
    t3 = t3 + t1*t1;
    while(t2 > 0) {
      t2 = t2 - 1;
      c = a;
      b = d;
    }
    d = b;
  }
  while(t3 > 0) {
    t3 = t3 - 1;
  }
  return 0;
}
