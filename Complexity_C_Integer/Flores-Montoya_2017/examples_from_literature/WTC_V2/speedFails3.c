int nondet();

int speedFails3(int x,int n,int t){
  int b=nondet();

  while(x>=0 && x<=n)
    {
      if(b>0)
	{
	  x=x+t;
	}
      else
	{
	  x=x-t;
	}

    }
  
  return 0;
}
