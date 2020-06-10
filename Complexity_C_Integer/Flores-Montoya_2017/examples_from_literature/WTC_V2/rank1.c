
int nondet();

void rank1(int m)
{
int y= 0;
int x = m;
while(x>=0 && y>=0){
if(nondet()>0){
   while(y <= m && nondet()>0)
   y++;
   x--;
  }
  y--;
}
}


