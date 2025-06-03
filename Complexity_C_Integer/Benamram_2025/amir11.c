/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */

int loop(int x1, int x2, int x3, int x4) {
  while(x2 > 0) {
    if (x1 > 0) {
      x1 = x1-2;
      x4++;
      x3 = x4;
      while (x3 > 0) {
        x2 += x3;
        x3-- ;
      }
    } else {
      x2-- ;
      x1 = -x1-2; 
    }
  }
  return 0;
}
