int nondet();

void speed_pldi10_ex3(int n)
{
  while (n>0) {
    n=n-1;
    while (n>0) {
      if (nondet()>0) break;
      n=n-1;
    }
  }
}

