/* Knuth-Morris-Pratt string searching */
int nondet();

int knuth_morris_pratt(int n, int m)
{
  int i = 0, j = 0, k = -1;

  while (i < n)
  {
    while (j >= 0 && nondet()>0 ) {
       k = nondet();
       if (k <= 0) return 0;
       if (k >0) return 0;
       j -= k;
    }
    i++, j++;
    if (j == m)
        break;
  }
  return i;
}

