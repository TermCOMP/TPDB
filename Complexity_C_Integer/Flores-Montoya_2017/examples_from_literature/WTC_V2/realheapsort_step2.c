
int nondet();

//realheapsort - destruction only
//aspic - delay 3 nécessaire, et pas de -nomu dans rank
// on trouve 
void realheapsort_step2(int N)
{
  //int t[100];
  int temp;
  int k,j,m;
  if(N > 2){
  //destruction
  
    for (k=0;k<=N-2;k++)
      {
        j = 0; m=0;
        temp =nondet();// t[N-k-1];
        ;//t[N-k-1]=t[0];
        ;//t[0]=temp;
        while(2*j+1<=N-2-k)
	  {
	    if ((2*j+1==N-2-k) || (nondet()<nondet()))
	      m=2*j+1;
	    else
	      m=2*j+2;
            if (nondet()>nondet())
	      {//swap j m
	        temp=nondet();//t[m];
	        ;//t[m]=t[j];
            ;//t[j]=temp;
	        j=m;
	      }
            else j=N;
	  
	  }
	
      }
  }
}
  
