int nondet();

void sipmabubble(int n){
  /* n >= 0 */
  //int A[100];
  int tmp;

  int i, j;

  i = n;
  while(i >= 0){
    j = 0;
    while(j <= i-1){
      if(nondet() > nondet()){
	  ;
	  //tmp = A[j];
      //A[j] = A[j+1];
      //A[j+1] = tmp;
	}
      ++j;
    }
    i--;
  }
}
