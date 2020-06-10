//taken from cBench	consumer_tiff2bw/src/tif_packbits.c	PackBitsEncode

int random();

//Complexity: O(n)
void PackBitsEncode(int cc)
{
    /*u_char *bp = (u_char *) buf;
    tidata_t op, ep, lastliteral;*/
    long n, slop;
    int b;
    enum { BASE, LITERAL, RUN, LITERAL_RUN } state;
    /*(void) s;
    op = tif->tif_rawcp;
    ep = tif->tif_rawdata + tif->tif_rawdatasize;*/
    state = BASE;
    //lastliteral = 0;
    while (cc > 0) {
	//b = *bp++,
	cc--, n = 1;
	for (; cc > 0 && random(); cc--)//, bp++)
	    n++;
      again:/*if (op + 2 >= ep) {
	    if (state == LITERAL || state == LITERAL_RUN) {
		slop = op - lastliteral;
		//tif->tif_rawcc += lastliteral - tif->tif_rawcp;
		if (!TIFFFlushData1(tif))
		    return (-1);
		op = tif->tif_rawcp;
		while (slop-- > 0)
		    *op++ = *lastliteral++;
		lastliteral = tif->tif_rawcp;
	    } else {
		tif->tif_rawcc += op - tif->tif_rawcp;
		if (!TIFFFlushData1(tif))
		    return (-1);
		op = tif->tif_rawcp;
	    }
	}*/
	switch (state) {
	case BASE:
	    if (n > 1) {
		state = RUN;
		if (n > 128) {
		    /**op++ = (tidata) - 127;
		    *op++ = b;*/
		    n -= 128;
		    goto again;
		}
		/*op++ = (tidataval_t) (-(n - 1));
		*op++ = b;*/
	    } else {
		/*lastliteral = op;
		*op++ = 0;
		*op++ = b;*/
		state = LITERAL;
	    }
	    break;
	case LITERAL:
	    if (n > 1) {
		state = LITERAL_RUN;
		if (n > 128) {
		    /**op++ = (tidata) - 127;
		    *op++ = b;
		    n -= 128;*/
		    goto again;
		}
		/**op++ = (tidataval_t) (-(n - 1));
		*op++ = b;*/
	    } else {
		if (random())
		    state = BASE;
		//*op++ = b;
	    }
	    break;
	case RUN:
	    if (n > 1) {
		if (n > 128) {
		    /**op++ = (tidata) - 127;
		    *op++ = b;*/
		    n -= 128;
		    goto again;
		}
		/**op++ = (tidataval_t) (-(n - 1));
		*op++ = b;*/
	    } else {
		/*lastliteral = op;
		*op++ = 0;
		*op++ = b;*/
		state = LITERAL;
	    }
	    break;
	case LITERAL_RUN:
	    /*if (n == 1 && op[-2] == (tidata) - 1 && *lastliteral < 126) {
		state = (((*lastliteral) += 2) == 127 ? BASE : LITERAL);
		op[-2] = op[-1];
	    } else*/
	    if(random())
		state = BASE;
	    else if(random())
		state = LITERAL;
	    else
		state = RUN;

	    goto again;
	}
    }
    /*tif->tif_rawcc += op - tif->tif_rawcp;
    tif->tif_rawcp = op;
    return (1);*/
}
