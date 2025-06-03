/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */
 extern int nondet();

void amir14(int x2, int x3, int x4)
{
    int i;
    int x1 = 0;
    int x5 = 0;
    for (i=0; i<x4; i++) {
        x1 = x2;
        for (i=0; i<x3; i++) {
            x5 = x5+x1;
            x1 = x1>0 ? x1-1 : 0;
        }
        x3 = x5;
    }
    while (x5 > 0) {
        x5--;
    }
}
