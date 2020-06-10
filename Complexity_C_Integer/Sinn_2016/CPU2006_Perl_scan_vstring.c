//taken from SPEC CPU2006	perlbench/src/toke.c 	Perl_scan_vstring

int nondet();

//O(n)
void
Perl_scan_vstring(int s, int PL_bufend)
{
    int pos = s;
    int start = s;
    if (nondet()) pos++;  /* get past 'v' */
    while (pos < PL_bufend && nondet())
	pos++;

    if (nondet()) {

	if (nondet()) s++;  /* get past 'v' */

	for (;;) {
	    {
		int end = pos;
		while (--end >= s) {
		}
	    }
	    if (pos + 1 < PL_bufend && nondet())
		 s = ++pos;
	    else {
		 s = pos;
		 break;
	    }
	    while (pos < PL_bufend && nondet())
		 pos++;
	}
    }
}

