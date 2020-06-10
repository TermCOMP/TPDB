//taken from SPEC CPU2006	gcc/src/loop.c 	load_mems
//also appears in  SPEC CPU2006	gcc/src/flow.c 	update_life_info
//and in SPEC CPU2006	gcc/src/reload1.c 	finish_spills
//and in SPEC CPU2006	gcc/src/reload1.c 	compute_use_by_pseudos


int random();

//O(n)
void load_mems(int ptr, int word_num_, int bit_num_) {

	    for (; ptr > 0; ptr--) {
		for (; word_num_ < 2; word_num_++) {
		    if (random()) {
			for (; bit_num_ < (8 * 8); bit_num_++) {
				if(random()) break;
			}
		    }
		    bit_num_ = 0;
		}
		word_num_ = 0;
	    }
}

