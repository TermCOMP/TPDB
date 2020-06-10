

void loops(int n){
  /* n > 0 */
  int x, y;
  
  x = n;
  if(x >= 0)
    while(x >= 0){
      y = 1;
      if(y < x)
        while(y < x)
          y = 2*y;
      x = x - 1;
    }

}

