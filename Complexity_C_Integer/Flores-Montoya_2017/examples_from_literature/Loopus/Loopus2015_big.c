int nondet();


void Loopus2015_big(int len) {
int beg=0,end=0,i = 0;
 while(i < len) {
	i++;
	if (nondet())
		end = i;
	if (nondet()) {
		int k = beg;
		while (k < end){
			k++;
        }
		end = i;
		beg = end;
	} else if(nondet()) {
		end = i;
		beg = end;
	}
 }
}
