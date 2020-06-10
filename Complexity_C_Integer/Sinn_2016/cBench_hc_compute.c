//taken from cBench/office_ghostscript/src/shcgen.c

int random();

void hc_compute(int num_values) {
    for (int i = num_values; i > 0;) {
	int j = i;
	--j;// int len = nodes[--j].code_length;
	while (j > 0 && random())
	    --j;
	//qsort(&nodes[j], i - j, sizeof(count_node), compare_values);
	for(int x = i - j; x > 0; x --)//quadratic loop as substitute for qsort 
		for(int y = x; y > 0 && random(); y--); 
	i = j;
    }
}

