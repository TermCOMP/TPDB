
int nondet();

void Loopus2015_ex2(int n, int m1,int m2) {
 if(n<0) return;
 if(m1<0) return;
 if(m2<0) return;
 int y = n;
 int x;
 if(nondet()>0)
    x = m1;
 else
  x = m2;
 while(y > 0) {
   y--;
   x = x + 2; 
  }
 int z = x;
  while(z > 0)
   z--; 
}



