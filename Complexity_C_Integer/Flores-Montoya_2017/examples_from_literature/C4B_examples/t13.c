int nondet();

void t13(int x, int y)
{
  while (x > 0) {
    x=x-1;
    if (nondet()>0) 
      y=y+1;
    else
      while (y > 0)
        y=y-1;
  }
}

