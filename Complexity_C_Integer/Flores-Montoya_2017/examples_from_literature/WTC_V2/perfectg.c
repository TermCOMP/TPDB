int perfectg(int x){
  int y1, y2, y3;

  if(x <= 1) goto D;

  y1=x;
  y2=x;
  y3=x;

 A:y1 = y1-1;
   if(y1 == 0) goto D;
 B:if(y2 < y1) goto F;
   y2 = y2-y1;
   goto B;
 F:if(y2 != 0) goto C;
   y3 = y3 - y1;
 C:y2 = x;
   goto A;
 D:return (y3 == 0);
}
