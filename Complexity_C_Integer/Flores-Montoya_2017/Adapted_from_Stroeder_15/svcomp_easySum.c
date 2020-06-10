extern int __VERIFIER_nondet_int(void);

int foo(int i,int sum,int bound){
i = 0;
sum = 0;
while (i<bound) {
    sum = sum + i;
    i = i + 1;
  }
return 0;
}

