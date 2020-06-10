//taken from cBench	office_ghostscript/src/scfd.c	cf_decode_eol	

//Complexity: O(n)
void cf_decode_eol(int ss_bits, int ss_bits_left, int ss_K, int pr_ptr, int pr_limit)
{
    /*register const byte *p;
    const byte *rlimit;
    uint bits;*/
    int bits_left;
    int zeros;
    int look_ahead;
    int p; //modelling register const byte *p;
    int rlimit; //modelling const byte *rlimit;
    p = pr_ptr, rlimit = pr_limit, bits_left = ss_bits_left;
    for (zeros = 0; zeros < 12 - 1; zeros++) {
	if (bits_left < 1) {
	    if (rlimit - p < 3) {
		//int c;
		if (p < rlimit)
		    ++p;
		    //c = *++p;
		else
		    goto out;
		/*if (ss->FirstBitLowOrder)
		    c = byte_reverse_bits[c];
		bits = (bits << 8) + c, bits_left += 8;*/
		bits_left += 8;
	    } else {
		/*if (ss->FirstBitLowOrder)
		    bits = (bits << 24) + ((uint) byte_reverse_bits[p[1]] << 16) + ((uint) byte_reverse_bits[p[2]] << 8) + byte_reverse_bits[p[3]];
		else
		    bits = (bits << 24) + ((uint) p[1] << 16) + ((uint) p[2] << 8) + p[3];*/
		bits_left += 24, p += 3;
	    }
	};
	/*if (((bits >> (bits_left - (1))) & ((1 << (1)) - 1)))
	    return -(zeros + 1);
	(bits_left -= (1));*/
	(bits_left -= (1));
    }
    look_ahead = (ss_K > 0 ? 2 : 1);
    for (;;) {
	if (bits_left < look_ahead) {
	    if (rlimit - p < 3) {
		//int c;
		if (p < rlimit)
		    ++p;
		    //c = *++p;
		else
		    goto back;
		/*if (ss->FirstBitLowOrder)
		    c = byte_reverse_bits[c];
		bits = (bits << 8) + c, bits_left += 8;*/
		bits_left += 8;
	    } else {
		/*if (ss->FirstBitLowOrder)
		    bits = (bits << 24) + ((uint) byte_reverse_bits[p[1]] << 16) + ((uint) byte_reverse_bits[p[2]] << 8) + byte_reverse_bits[p[3]];
		else
		    bits = (bits << 24) + ((uint) p[1] << 16) + ((uint) p[2] << 8) + p[3];*/
		bits_left += 24, p += 3;
	    }
	};
	/*if (((bits >> (bits_left - (1))) & ((1 << (1)) - 1)))
	    break;*/
	(bits_left -= (1));
    }
    /*(bits_left -= (1));
    pr->ptr = p -= (bits_left >> 3), ss->bits = bits >>= (bits_left & ~7), ss->bits_left = bits_left &= 7;
    return 1;*/
    return;
  back:/*bits &= (1 << bits_left) - 1;
    bits_left += 12 - 1;
    pr->ptr = p -= (bits_left >> 3), ss->bits = bits >>= (bits_left & ~7), ss->bits_left = bits_left &= 7;*/
  out:return; // 0
}

