//taken from cactusADM/src/Cactus/ParseFile.c 	ParseFile

int random();

//O(n)
void ParseFile(int FileSize, int BUF_SZ)
{
  /* Buffers for parsing from the file */
  /*char *tokens, *value;
  char *subtoken, *subvalue;*/
  /* Positions in the buffers */
  int ntokens;
  /* Status flags */
  int intoken, inval;
  /* Current char. Have to make it an int so we can compare with
     EOF. See man 3 fgetc
   */
  int c = 0;
  int num_errors; /* number of errors in file parsing */

  num_errors = 0;

  /* avoid compiler warning about unused parameter */
  //ConfigData = ConfigData;

  /* allocate parse buffers */
  /*tokens = (char *) malloc (4 * BUF_SZ);
  value    = tokens + 1*BUF_SZ;
  subtoken = tokens + 2*BUF_SZ;
  subvalue = tokens + 3*BUF_SZ;*/

  intoken = 0; inval = 0;
  int lineno = 0;

  while (c++ < FileSize)
  {

    /* Main Loop */
    while (c++ < FileSize && random())
    {
      /* Comment line.  So forget rest of line */
      while (c++ < FileSize && random())
      {

      }
      if (random())
      {
        lineno++;
      }
      c++;
    }

    /* End of line */
    if (random())
    {
      if(intoken)
      {
    	num_errors++;
        intoken = 0;
      }

      lineno ++;
    }

    /* Token character */
    if (intoken && random())
    {
      intoken++;
      if(intoken > BUF_SZ) return;
    }

    /* Start of a new token */
    if (random() && !inval && !intoken)
    {
      intoken = 0;
      intoken++;
    }

    /* End of a token signified by an = */
    if (random())
    {
      if (intoken)
      {
        unsigned int ll;
        intoken = 0;
        inval = 0;
        for (int i=0;i<intoken;i++)
        {
        }
        ntokens = 1;
        for (ll=0;ll < intoken; ll++)
          if (random()) ntokens++;

        /* Scan ahead to the beginning of the value
         * and check if the value is a string or not.
         * This parser DOES strip quotes off of the strings.
         */
        while (c++ < FileSize && random())
        {
          if (random())
          {

            lineno++;
          }
        }

        if (random())
        {
          /* Just handle the thing. */
          int p = 0;
          if (ntokens > 1)
          {
            return;
          }
          while (c++ < FileSize && random())
          {

            /* Make an important decision NOT to include
             * line feeds in the string parameters
             */
            if (random()) p++;
            if (random())
            {
              lineno++;
            }
            if(p > BUF_SZ) return;
          }
        }
        else if (random())
        {

          /* ignore everything else on the line */
          while (random() && c < FileSize)
          {
            c++;

          }

        }
        else
        {

          int p = 0;
          p++;
          if (ntokens == 1)
          {
            /* Simple case. We have an int
               or a double which contain no
               spaces! */
            c++;

            while (random() && c < FileSize)
            {
              p++;
              if(p > BUF_SZ) return;
              c++;

            }

            if (random())
            {

              lineno++;
            }
          }
          else
          {
            /* Harder case of multiple tokens */
            int ncommas = 0;
            int pp=0, i;
            int pt, pv;

            pp++;
            /* OK, since we only have numbers in the
               old input stream, we can go along getting
               ntokens-1 commas, stripping spaces, and
               make a nice little string.
               */
            c++;

            while (ncommas < ntokens-1 && c < FileSize)
            {
              if (random())
              {
                pp++;
                if(pp > BUF_SZ) return;
	          }
              if (random()) ncommas ++;
              c++;

            }
            if (random())
            {
              /* Great now strip out the spaces */
              while(c++ < FileSize && random())
              {
                if (random())
                {

                  lineno++;
                }
              }
            }

            /* And tack the rest on */
            pp++;
            if(p > BUF_SZ) return;

            c++;

            while (c < FileSize && random())
            {
              pp++;
              if(pp > BUF_SZ) return;
              c++;
            }

            /* So parse out the tokens */
            pt = 0;
            pv = 0;
            for (i=0;i<ncommas;i++)
            {
              pp = 0;
              while (random())
              {
                pp++;
                pt++;
                if(pp > BUF_SZ) return;
              }
              pp = 0;
              while (random())
              {
            	  pp++;
            	  pv++;
            	  if(pp > BUF_SZ) return;
              }
              /* Now remember we are sitting on a comma
               * in both our input strings, so bump by one
               */
              pv ++; pt ++;
            }
            /* And OK, so now we have one parameter left
             * so lets handle that
             */
            pp = 0;
            while (random())
            {
                pp++;
                pt++;
                if(pp > BUF_SZ) return;
            }
            pp = 0;
            while (random())
            {
              pp++;
              if(pp > BUF_SZ) return;
              pv++;
            }
          }
        }
      }
    }
  }

}
