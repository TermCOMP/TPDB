//taken from cBench	bzip2d/src/compress.c	sendMTFValues

int random();

//Complexity: O(n)
void sendMTFValues(int nGroups, int alphaSize)	{	
	int nPart;//, remF, tFreq, aFreq;
	nPart = nGroups;
	//remF = s->nMTF;
	int gs = 0;
	while (nPart > 0) {
		//tFreq = remF / nPart;
		int ge = gs - 1;
		//aFreq = 0;
		while (random() && ge < alphaSize - 1) { //Freq < tFreq
			ge++;
			//aFreq += s->mtfFreq[ge];
		}
		if (ge > gs && nPart != nGroups && nPart != 1
				&& ((nGroups - nPart) % 2 == 1)) {
			//aFreq -= s->mtfFreq[ge];
			ge--;
		}

		/*for (v = 0; v < alphaSize; v++)
			if (v >= gs && v <= ge)
				s->len[nPart - 1][v] = 0;
			else
				s->len[nPart - 1][v] = 15;*/
		nPart--;
		gs = ge + 1;
		//remF -= aFreq;
	}
}

