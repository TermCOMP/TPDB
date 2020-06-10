

int speedSimpleMultipleDep(int n,int m)
{
  int x,y;
  x=0;y=0;
  while (x<n)
    {
      if (y<m) ++y ; else {y=0;++x;};  
    };
  return 0;
}


