//taken from office_ghostscript/src/zfileio.c 	zwritehexstring_at	1512
// /files/sinn/Benchmarks/CAV2015/Loopus/LLVM3.5.1/InputNonRecursive/office_ghostscript_src_zfileio.o.zwritehexstring_at.o

//Complexity: O(n)
void zwritehexstring_at_extracted(int len) {
    while (len > 0) {
	int len1 = (((len) < (128 / 2)) ? (len) : (128 / 2));
	int count = len1;
	do {
	} while (--count > 0);
	len -= len1;
    }
}


