int nondet();


void Loopus2011_ex1(int n){
int i = 0; int j;

 while(i < n){
	i++; j = 0;
	while((i < n) && nondet()>0){
		i++; j++;
	}
	if (j > 0)
		i--;
 }
}
