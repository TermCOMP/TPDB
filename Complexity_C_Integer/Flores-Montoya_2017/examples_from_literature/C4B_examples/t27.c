void t27(int n, int y)
{
  while (n<0) {
    n++;
    y+=1000;
    while (y>=100)
      y-=100;
  }
}

