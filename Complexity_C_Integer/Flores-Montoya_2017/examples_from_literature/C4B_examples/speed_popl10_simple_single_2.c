void speed_popl10_simple_single_2(int n, int m)
{
  int x=0;
  int y=0;

  for (;;) {
    if (x<n) {
      x=x+1; y=y+1;
    }
    else if (y<m) {
      x=x+1; y=y+1;
    }
    else
      break;
  }
}

