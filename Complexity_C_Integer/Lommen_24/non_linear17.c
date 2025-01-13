extern int __VERIFIER_nondet_int(void);

void f(int x1, int x2, int x3, int x4, int y1, int y2, int f) {
  int u = __VERIFIER_nondet_int();
  int v = __VERIFIER_nondet_int();

  x1 = u;

  f = v;
  while (1) {
    if (1 <= x1 && x1 <= 3 && f == 0) {
      x1 = x1 + 1;
      v = __VERIFIER_nondet_int();
      f = v;
    } else if (x2 > 1 && f == 1) {
      x2 = x2 - 1;
      v = __VERIFIER_nondet_int();
      f = v;
    } else {
      break;
    }
  }

  while(y2 < y1 && y2 > 0) {
    y1 = 2*y1;
    y2 = 3*y2;
  }

  while(y2 > 0) {
    y2 = y2 - 1;
  }
}
