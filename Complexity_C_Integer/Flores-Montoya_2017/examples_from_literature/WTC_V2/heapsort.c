int nondet();

int heapsort(int size) {
  int i=1;
  int l,r,max;
  while (size>0 && i >= 1){ 
    l=2*i;
    r=2*i+1;

    if (l<=size)  
    {
      if (l<1 || l>size)  return 0;    // assume (1<=l<=size)
      if (nondet()>0) max=l; else max=i;
    }
    else max=i;

    if (r<=size)  
    {
      if (r<1 || r>size)  return 0;
      if (nondet()>0)  max=r;
    };

    if (i!=max)  
    { 
      if (i<1 || i>size)  return 0;
      if (max<1 || max>size)  return 0;
      i=max;
    }
    /*else fin=1;*/ 
    else return 0;
  }
  return 0;
}
