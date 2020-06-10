extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
while (y > 0 && x > 0) {
      if (x>y) {
          z = y;
      } else {
          z = x;
      }
      if (__VERIFIER_nondet_int() != 0) {
          y = y+x;
          x = z-1;
          z = y+z;
      } else {
          x = y+x;
          y = z-1;
          z = x+z;
      }
    }
return 0;
}

