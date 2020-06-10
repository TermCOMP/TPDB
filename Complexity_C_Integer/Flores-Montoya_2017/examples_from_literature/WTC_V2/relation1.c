int nondet();

int relation1(int x,int y){

  x=0;

  do {
    x=nondet();
    y=x;

    if ((x-y>2) || (x-y<1)) break;
  }
  while(x<10);

  return 0;
}
