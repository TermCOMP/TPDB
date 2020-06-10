//taken from security_pgp_d/src/random.c 	cryptRandWriteFile	1220

//Complexity: O(n)
void cryptRandWriteFile(int bytes) {
    while (bytes > 0) {
	int len = (bytes < 256) ? bytes : 256;
	for (int i = 0; i < len; i++);
	bytes -= len;
    }
}

