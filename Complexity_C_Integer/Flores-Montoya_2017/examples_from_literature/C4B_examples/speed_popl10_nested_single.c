int nondet();

void speed_popl10_nested_single(int n)
{
  int x=0;

  while (x<n) {
    x=x+1;
    while (x<n) {
      if (nondet()>0)
        break;
      x=x+1;
    }
  }
}
