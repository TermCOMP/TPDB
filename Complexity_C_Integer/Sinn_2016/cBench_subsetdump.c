//taken from cBench	office_ispell/src/dump.c	subsetdump	883

int random();

//Complexity: O(n)
void subsetdump(int limit) 
{
    int cnum;
    int rangestart;
    for (cnum = 0; cnum < limit; cnum++) {
	if (random()) {
	    for (rangestart = cnum; cnum < limit; cnum++) {
		if (random())
		    break;
	    }
	    if (random()) {
		while (rangestart < cnum)
		    rangestart++;
	    }
	}
   }
}


