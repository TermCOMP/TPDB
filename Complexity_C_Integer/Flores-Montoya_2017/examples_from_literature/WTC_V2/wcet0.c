int nondet();

int wcet0 (int n) {
  int i,j;

  j=0;
  i=n;
  if (n>=1) 
    do {
      if (nondet()>0){
	  j++;
	  if(j>=n) j=0;
	}
      else {
	j--;
	if(j<=-n) j=0;
      }
      
      i--;
    }
    while(i>0);

  return 0;
}
