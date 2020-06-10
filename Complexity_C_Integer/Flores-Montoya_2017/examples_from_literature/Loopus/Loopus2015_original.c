
int nondet();

void Loopus2015_original(int len)
{
int beg=0;int end=0;int i=0;
 while(i < len){
 i++;
 if (nondet()>0)
   end = i;
 if (nondet()>0){
   int k = beg;
   while (k < end){
	k++;
   }
   end = i;
   beg = end;
   }
 }
}


