extern int __VERIFIER_nondet_int(void);

int foo(int a,int b,int c,int i,int j,int M,int N){
a = i;
b = j;
c = 0;
while (i<M || j<N) {
    	i = i + 1;
    	j = j + 1;
    	c = c + 1;
    }
return 0;
}

