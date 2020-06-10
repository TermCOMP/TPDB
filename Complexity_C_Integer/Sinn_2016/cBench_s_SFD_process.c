//taken from office_ghostscript/src/sfilter1.c 

int nondet();

//Complexity: O(n)
void s_SFD_process(int p, int rlimit, int match) {
	while (p < rlimit) {
		++p;
		if (nondet()) {
			++match;
			if (nondet()) {
				match = 0;
			}
			continue;
		}
		/* No match here, back up to find the longest one. */
		/* This may be quadratic in string_size, but */
		/* we don't expect this to be a real problem. */
		if (match > 0) {
			while (match > 0) {
				match--;
				if ( nondet() )
					break;
			}
			p--;
		}
	}
}

