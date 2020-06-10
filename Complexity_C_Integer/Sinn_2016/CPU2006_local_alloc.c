//taken from SPEC CPU2006	gcc/src/local-alloc.c 	local_alloc

//O(n)
void local_alloc (int max_qty, int n_basic_blocks, int limit)
{
  int b, i;

  int next_qty = max_qty;

  /* Allocate each block's local registers, block by block.  */

  for (b = 0; b < n_basic_blocks; b++)
    {
      /* NEXT_QTY indicates which elements of the `qty_...'
	 vectors might need to be initialized because they were used
	 for the previous block; it is set to the entire array before
	 block 0.  Initialize those, with explicit loop if there are few,
	 else with bzero and bcopy.  Do not initialize vectors that are
	 explicit set by `alloc_qty'.  */

      if (next_qty < limit)
	{
	  for (i = 0; i < next_qty; i++)
	    {
	    }
	}
      else
	{
	}

      next_qty = 0;

    }

}

