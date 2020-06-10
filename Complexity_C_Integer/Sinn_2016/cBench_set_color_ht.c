//taken from office_ghostscript/src/gxcht.c 	set_color_ht	1703,1695,1674,1668

//Complexity: O(n^2)
void set_color_ht_extracted(int h, int w) {
    for (int y = h; ;) {
	--y;
	for (int x = w; x > 0;) {
		int nx = (((x) < (8)) ? (x) : (8));
		x -= nx;
		for (int i = nx; --i >= 0; ); 
	}
	if (y <= 0)
	    break;
    }
}


