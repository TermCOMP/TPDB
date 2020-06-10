//taken from cBench/...

int nondet();

void bin_search_StepSize2 (int r, int s) {
static int c = 4; int n; int f = 0; int d = 0;
do {
  n = nondet();
  if (c == 1 ) break;
  if (f) c /= 2;
  if (n > r) {
    if (d == 1 && !f) {
	  f = 1; c /= 2;
	}
    d = 2; s += c;
    if (s > 255) break;
  }
  else if (n < r) {
    if (d == 2 && !f) {
	  f = 1; c /= 2;
	}
    d = 1; s -= c;
    if (s < 0) break;
  }
  else break;
}
while (1);
}
