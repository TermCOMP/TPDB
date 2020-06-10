int nondet();

int aaron12(int x,int y,int z) {
	while (x>=y) {
		if (nondet()>0) {
			x=x+1;
			y=y+x;


		} else {
			x=x-z;
			y=y+(z*z);
			z=z-1;

		}


	}
	return 0;



}
