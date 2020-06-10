

void t16(int x, int y)
{
  int z;

  if(y < 0) return;

  while (x > y) {
    x -= y+1;
    z = 100 + 2*y;
    while (z > 0)
      z--;
  }
}

