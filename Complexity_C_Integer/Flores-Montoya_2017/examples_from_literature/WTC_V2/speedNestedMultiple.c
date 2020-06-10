int nondet();

int speedNestedMultiple(int x,int n,int y,int m)
{

  while (x<n)
    {
      while (y<m && nondet()>0) y++ ; 
      x++;
    };
  return 0;
}

