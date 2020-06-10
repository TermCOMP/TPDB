int nondet();

void serpent(int n){
  int x, y;
  if(n <= 0) return;
  y=n; x=n;
  while(x >= 0){
W1: while(y>=0 && nondet()>0){
      --y;
    }
    --x;
W2: while(y<=n && nondet()>0){
      ++y;
    }
  }
}
