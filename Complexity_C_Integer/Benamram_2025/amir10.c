/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */
 extern int nondet();

void amir10(int x3, int x7)
{
    int i;
    int x4 = 0;
    int x1 = 0;
    int x2 = 0;
    int x5 = 0;
    while (x7-- > 0) {
        for (i=0; i<x7; i++) {
            for (i=0; i<x3; i++) {
                x4 = x1;
                x1 = x2+1;
                x2 = x4;
            }
            x5 = x5+x1;
            x3 = x1;
        }
        x3 = x5;
    }
    while (x3 > 0) {
        x3--;
    }
}
