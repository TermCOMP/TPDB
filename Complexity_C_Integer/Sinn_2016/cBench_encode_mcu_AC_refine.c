//taken from cBench consumer_jpeg_c/src/jcphuff.c	encode_mcu_AC_refine	
//similar pattern appears in consumer_jpeg_c/src/jcphuff.c       encode_mcu_AC_first
//and in cBench     consumer_jpeg_c/src/jchuff.c    encode_one_block
//same pattern appears in cBench        consumer_jpeg_c/src/jchuff.c    htest_one_block

int random();

//Complexity: O(n)
void encode_mcu_AC_refine(int cinfo_Ss, int cinfo_Se)
{
    /*phuff_entropy_ptr entropy = (phuff_entropy_ptr) cinfo->entropy;
    register int temp;*/
    register int r, k;
    /*int EOB;
    char *BR_buffer;
    unsigned int BR;*/
    int Se = cinfo_Se;
    //int Al = cinfo->Al;
    //JBLOCKROW block;
    //int absvalues[64];
    /*entropy->next_output_byte = cinfo->dest->next_output_byte;
    entropy->free_in_buffer = cinfo->dest->free_in_buffer;*/
    /*if (cinfo->restart_interval)
	if (entropy->restarts_to_go == 0)
	    emit_restart(entropy, entropy->next_restart_num);
    block = MCU_data[0];
    EOB = 0;*/
    for (k = cinfo_Ss; k <= Se; k++) {
	/*temp = (*block)[jpeg_natural_order[k]];
	if (temp < 0)
	    temp = -temp;
	temp >>= Al;
	absvalues[k] = temp;
	if (temp == 1)
	    EOB = k;*/
    }
    r = 0;
    //BR = 0;
    //BR_buffer = entropy->bit_buffer + entropy->BE;
    for (k = cinfo_Ss; k <= Se; k++) {
	if (random()) { //(temp = absvalues[k]) == 0)
	    r++;
	    continue;
	}
	while (r > 15 && random()) { //k <= EOB
	    /*emit_eobrun(entropy);
	    emit_symbol(entropy, entropy->ac_tbl_no, 0xF0);*/
	    r -= 16;
	    /*emit_buffered_bits(entropy, BR_buffer, BR);
	    BR_buffer = entropy->bit_buffer;
	    BR = 0;*/
	}
	/*if (temp > 1) {
	    BR_buffer[BR++] = (char) (temp & 1);
	    continue;
	}
	emit_eobrun(entropy);
	emit_symbol(entropy, entropy->ac_tbl_no, (r << 4) + 1);
	temp = ((*block)[jpeg_natural_order[k]] < 0) ? 0 : 1;
	emit_bits(entropy, (unsigned int) temp, 1);
	emit_buffered_bits(entropy, BR_buffer, BR);
	BR_buffer = entropy->bit_buffer;
	BR = 0;*/
	r = 0;
    } /*if (r > 0 || BR > 0) {
	entropy->EOBRUN++;
	entropy->BE += BR;
	if (entropy->EOBRUN == 0x7FFF || entropy->BE > (1000 - 64 + 1))
	    emit_eobrun(entropy);
    }
    cinfo->dest->next_output_byte = entropy->next_output_byte;
    cinfo->dest->free_in_buffer = entropy->free_in_buffer;
    if (cinfo->restart_interval) {
	if (entropy->restarts_to_go == 0) {
	    entropy->restarts_to_go = cinfo->restart_interval;
	    entropy->next_restart_num++;
	    entropy->next_restart_num &= 7;
	}
	entropy->restarts_to_go--;
    }
    return 1;*/
}
