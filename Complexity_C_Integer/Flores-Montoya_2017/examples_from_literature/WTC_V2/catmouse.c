

int catmouse(int m,int n){

  int x;
  x=0;
  
  while(x<=n)
    {
      if (x<=m) ++x;
      else --x;
    }
  
  return 0;
}


// if m<=n does not terminate.
