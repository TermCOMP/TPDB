
int nondet();
void tick(int c);

void ex_paper1(int x,int y,int z){
if(x<=0) return;
if(y<=0) return;
 while(x>0) {
   x--;
   y++;
 while(nondet() && y>0){
     y--;   
     tick(2);
   }
 }
  while(y>0){
    y--; 
    for(int i=0;i<z;i++)
       tick(1);
  }
   
}
