int nondet();

void t10(int x, int y)
{
  while (x>y) {
    if (nondet()>0)
      y=y+1;
    else
      x=x-1;
  }
}

