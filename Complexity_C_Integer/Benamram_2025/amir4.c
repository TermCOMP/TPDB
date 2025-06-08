/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */
 
void amir4(int x4, int x1, int x2, int x3)
{
    int i;
    while (x4-- > 0) {
        for (i = 0; i< x4; i++) {
            x1 = x1+x2;
            x2 = x3;
        }
         x2 = x1;
    }
    while (x2 > 0) {
        x2--;
    }
}
