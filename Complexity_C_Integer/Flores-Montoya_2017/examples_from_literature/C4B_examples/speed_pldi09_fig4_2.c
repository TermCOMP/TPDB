

void peed_pldi09_fig4_2(int n, int m)
{
  int va=n;
  int vb=0;

/* assert(n > 0); */
 if(m <= 0) return;

  while (va > 0) {
    if (vb < m) { 
      vb=vb+1; 
      va=va-1;
    } else {
      vb=vb-1;
      vb=0;
    }
  }
}

