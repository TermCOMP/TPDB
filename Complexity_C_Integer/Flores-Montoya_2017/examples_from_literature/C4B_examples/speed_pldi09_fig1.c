void speed_pldi09_fig1(int n)
{
  int x=0;
  int y=0;

  for (;;) {
    if (x < n) {
      y=y+1;
      x=x+1;
    } else if (y > 0)
      y=y-1;
    else
      break;
  }
}

