int nondet();

void sipmamergesort_init(int n){//int a[]){
  int i, j, k, l, t;
  int h, m, p, q, r;
  int up;              /* really boolean */
 // int a[2*n+1];

  up = 1;
  p = 1;

  do{
    h = 1;
    m = n;
    if(up){
      i = 1;
      j = n;
      k = n+1;
      l = 2*n;
    } else {
      k = 1;
      l = n;
      i = n+1;
      j = 2*n;
    }

    do{
      if(m >= p)
	q = p;
      else q = m;
      m = m-q;
      if(m >= p)
        r = p;
      else r = m;
      m = m-r;

      while(q>0 && r>0)
        if(nondet()){
          //a[k] = a[i];
          k = k+h;
          i = i+1;
          q = q-1;
        } else {
          //a[k] = a[j];
          k = k+h;
          j = j-1;
          r = r-1;
        }
    
      while(r > 0){
        //a[k] = a[j];
        k = k+h;
        j = j-1;
        r = r-1;
      }

      while(q > 0){
        //a[k] = a[i];
        k = k+h;
        i = i+1;
        q = q-1;
      }

      h = -h;
      t = k;
      k = l;
      l = t;
    } while(m > 0);
    up = 1-up;
    p = 2*p;
  } while(p<n);

  if(up == 0){ // recopie
    i = 1;
    while(i <= n){
      //a[i] = a[i+n];
      i = i+1;
    }
  }

}
        
      
