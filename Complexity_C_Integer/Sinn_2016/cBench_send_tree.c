//taken from cBench security_pgp_d/src/ztrees.c	send_tree

int random();

//Complexity: O(n)
void send_tree(int max_code, int max_count, int min_count)
{
    int n;
    int count = 0;
    for (n = 0; n <= max_code; n++) {
	if (++count < max_count && random()) {
	    //continue;
	} else {
	  if (count < min_count) {
	    do {
	    } while (--count > 0); //original code: --count != 0
	  } else if (random()) {
	    if (random()) {
		count--;
	    };
	  }
	  count = 0;
    }
  }
}

