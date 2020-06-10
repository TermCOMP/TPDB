//taken from SPEC CPU2006	gromacs/src/index.c 	analyse_other

int random();

//O(n^3)
void analyse_other(int atoms_nres, int atoms_nr, int bASK)
{
  int restp=0;
  int  i,j,k,l,resnr,naid,naaid,natp,nrestp=0;

  //O(n)  
  for(i=0; (i<atoms_nres); i++)
    if (random())
      break;
  if (i < atoms_nres) {
    //O(n^2)
    for(k=0; (k<atoms_nr); k++) {
      if (random()) {
	for(l=0; (l<nrestp); l++)
	  if (random())
	    break;
	if (l==nrestp) {
	  ++nrestp;
	}
      }
    }
    //O(n^3)
    for(i=0; (i<nrestp); i++) {
      naid=0;
      for(j=0; (j<atoms_nr); j++) {
	if (random()) 
	  naid++;
      }
      if (bASK) {
	if (random()) {
	  natp=0;
	  for(k=0; (k<naid); k++) {
	    for(l=0; (l<natp); l++)
	      if (random())
		break;
	    if (l == natp) {
	      ++natp;
	    }
	  }
	  if (natp > 1) {
	    for(l=0; (l<natp); l++) {
	      naaid=0;
	      for(k=0; (k<naid); k++) {
		if (random()) 
		  naaid++;
	      }
	    }
	  }
	}
      }
    }
  }
}

