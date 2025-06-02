/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */
 
void amir5(int x4, int x1, int x2, int x5)
{
    int i;
    int x3 = 0;
    while (x5-- > 0) {
        for (i=0; i<x4; i++) {
            x2 = x1+x2;
            x3 = x2;
        }
         x2 = x1;
         x4 = x3;
    }
    while (x4 > 0) {
        x4--;
    }
}
