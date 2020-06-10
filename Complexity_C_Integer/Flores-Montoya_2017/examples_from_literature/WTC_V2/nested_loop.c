int nondet();

void nested_loop(int n, int m, int N){
  int i, j, k;
  if(0<=n && 0<=m && 0<=N){
    i = 0;
    while(i<n && nondet()>0){
      j = 0;
      while(j<m && nondet()>0){
        j += 1;
        k = i;
        while(k<N && nondet()>0)
          k += 1;
        i = k;
      }
      ++i;
    }
  }
}
