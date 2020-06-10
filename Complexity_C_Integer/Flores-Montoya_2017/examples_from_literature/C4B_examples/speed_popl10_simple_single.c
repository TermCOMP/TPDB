int nondet();

void speed_popl10_simple_single(int n)
{
  int x=0;

  while (x<n) {
    if (nondet()>0)
      x=x+1;
    else 
      x=x+1;
  }
}

