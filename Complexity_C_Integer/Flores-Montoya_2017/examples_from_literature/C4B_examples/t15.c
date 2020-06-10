

void t15(int x, int y)
{
  int z;

  if(y < 0) return;

  while (x>y) {
    x-=y+1;
    for (z=y; z>0; z--)
      /* nothing */;
  }
}

