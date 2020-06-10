int nondet();

int aaron3(int x,int y,int z,int tx) {
  while (x>=y) {
    if (nondet()>0) {
      z=z-1;
      tx=x;
      x=nondet();
      if (x>tx+z) return 0;
    } else {
      y=y+1;
      
    }
  }
  return 0;
}
