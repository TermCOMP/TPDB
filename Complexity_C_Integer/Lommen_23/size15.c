extern int __VERIFIER_nondet_int(void);

void size15(int x, int y, int f, int a, int b, int c) {
  int u = __VERIFIER_nondet_int();
  int v = __VERIFIER_nondet_int();

  x = u;
  f = v;
  while (1) {
    if (1 <= x && x <= 3 && f == 0) {
      x = x + 1;
      v = __VERIFIER_nondet_int();
      f = v;
    } else if (y > 1 && f == 1) {
      y = y - 1;
      v = __VERIFIER_nondet_int();
      f = v;
    } else {
      while(a < b && c != 0) {
        a = a + c*c*c;
        b = b + c*c;
        c = c + 1;
      }
      break;
    }
  }
  while(b > 0) {
    b = b - 1;
  }
}
