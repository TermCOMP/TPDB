int nondet();

int rsd (int r)
{

  int da,db,temp;
  int c1;
  c1=0;
  if (r>=0){
    da = 2*r;
    db = 2*r;
    while (da >=r) {
      if (nondet()>0){
	da --;
      }
      else{
	temp = da;
	da = db - 1;
	db = temp;
      }
      c1++;
    }
  }

  return 0;

  
}
