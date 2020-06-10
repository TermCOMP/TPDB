//taken from SPEC CPU2006	hmmer/src/weight.c SingleLinkCluster

int nondet();

//O(n^2)
void SingleLinkCluster(unsigned int n) {
  int a = n;
  int b = 0;
  while(a > 0) {
    a--;
    b++;
    while(b > 0) {
      b--;
      for(int i = n - 1; i > 0; i--)
        if(a > 0 && nondet()) {
          a--;
          b++;
        }
    }
  } 
}

