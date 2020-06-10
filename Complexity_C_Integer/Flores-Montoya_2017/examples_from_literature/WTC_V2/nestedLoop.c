int nondet();

void nestedLoop(int n, int m, int N){
  int i, j, k;
  if(0<=n && 0<=m && 0<=N){
    i = 0;
    while(nondet()>0 && i<n){
      j = 0;
      while(nondet()>0 && j<m ){
        j += 1;
        k = i;
        while(nondet()>0 && k<N)
          k += 1;
        i = k;
      }
      ++i;
    }
  }
}
