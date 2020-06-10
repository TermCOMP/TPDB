int nondet();

void noiseTickSize(int DELTAS)
{
    int i;
    int j;

    /*unsigned deltas[DELTAS];
    unsigned t;
    struct timeval tv_base, tv_old, tv_new;*/

    i = j = 0;
    //gettimeofday(&tv_base, 0);
    //tv_old = tv_base;
    do {
		//gettimeofday(&tv_new, 0);
		if (nondet()) { //tv_new.tv_usec > tv_old.tv_usec + 2
			i++;
			//tv_base = tv_new;
			j = 0;
		}

		//tv_old = tv_new;

		/*
		 * If we are forever getting <= 2 us, then just assume
		 * it's 2 us.
		 */
		if (j++ > 10000)
			return;// 2;
	} while (i < DELTAS);

    //t = deltas[DELTAS / 2];	/* Median */

//	return t;
}
