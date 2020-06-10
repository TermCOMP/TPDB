
int nondet();


void t62(int l, int h) {
  if (l>= h) return;
  for (;;) {
    do { l++; } while (l<h && nondet()>0);
    do { h--; } while (l<h && nondet()>0);
    if (l >= h) break;
  }
}

