
int unperfect(int x){
  int y1, y2, y3;

  if(x <= 0) return 0;

  y1=y2=y3=x;

  for(;;){
    y1 = y1-1;
    if(y1 == 0) break;
    while(y2 >= y1) y2 = y2 - y1;
    if(y2 == 0)
      y3 = y3 - y1;
    y2 = x;
  }

  return (y3 == 0);
}
