int nondet();

int counterex1a(int n,int b,int x,int y)
{
 
  while (x>=0 && 0<=y && y<=n) {
    if (b==0) {
      y++;                      /* transition t1 */
      if (nondet()>0) b=1;        /* transition t3 */
    }
    else {
      y--;                      /* transition t2 */
      if (nondet()>0) {x--; b=0;} /* transition t4 */
    }
  }
  return 0;
}

