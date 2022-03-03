extern int __VERIFIER_nondet_int(void);

void f(int x, int y, int f, int a, int b, int c) {
  int u = __VERIFIER_nondet_int();
  int v = __VERIFIER_nondet_int();

  x = u;
  f = v;
  while (1) {
    if (1<=x && x<=3 && f == 0) {
      x = x+1;
      v = __VERIFIER_nondet_int();
      f = v;
    } else if (y>1 && f == 1) {
      y = y-1;
      v = __VERIFIER_nondet_int();
      f = v;
    } else {
      while(a < b*b && a > 0) {
        a = 5*a + c*c;
        b = 2*b;
      }
      break;
    }
  }
}
