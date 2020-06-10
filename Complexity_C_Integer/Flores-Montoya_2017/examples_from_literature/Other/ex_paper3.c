int nondet();


void exp_paper3(int x,int y, int z){
 while(x>0) {
   if(nondet()>0){
     while(nondet()>0 && y>0 ){
        y--;   
        
     }
   }else{
   if(nondet()>0)
       y++;
   else
       y=z;
   }
  x--;
 }

}
