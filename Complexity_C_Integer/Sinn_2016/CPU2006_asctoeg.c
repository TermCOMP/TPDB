//taken from SPEC CPU2006	gcc/src/real.c 	asctoeg

int random();

//O(n^2)
void asctoeg(int s) {
  int k = s;
  while(k > 0) {
	  int sp = 0;
	  while (sp < s && random())
	    ++sp;
	  --sp;
	  while (sp > 0 && random())
	    sp--;
    k--;
  }
}

