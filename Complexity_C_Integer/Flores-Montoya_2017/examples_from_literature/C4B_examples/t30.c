void t30(int x, int y)
{
  int t=0;

  while (x>0) {
    x--;
    t=x, x=y, y=t;
  }
}

