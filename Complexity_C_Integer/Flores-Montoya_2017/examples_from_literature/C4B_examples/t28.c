void t28(int x, int y)
{
  while (x > y) {
    x--;
    x+=1000;
    y+=1000;
  }

  while (y>0)
    y--;
  while (x<0)
    x++;
}

