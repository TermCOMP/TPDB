
/**
 * Taken From cBench/office_ghostscript/gxht.c
 **/

void
render_ht(int level, int old_level)
{
/*[...]*/

sw:	switch ( level - old_level )
	{
	default:
		if ( level > old_level )
		{	//invert(0); invert(1); invert(2); invert(3);
			old_level += 4;
		}
		else
		{	//invert(-1); invert(-2); invert(-3); invert(-4);
			old_level -= 4;
		}
		goto sw;
	case 7: ;//invert(6);
	case 6: ;//invert(5);
	case 5: ;//invert(4);
	case 4: ;//invert(3);
	case 3: ;//invert(2);
	case 2: ;//invert(1);
	case 1: ;//invert(0);
	case 0: break;
	case -7: ;//invert(-7);
	case -6: ;//invert(-6);
	case -5: ;//invert(-5);
	case -4: ;//invert(-4);
	case -3: ;//invert(-3);
	case -2: ;//invert(-2);
	case -1: ;//invert(-1);
	}
/*[...]*/
	return;// 0;
}

