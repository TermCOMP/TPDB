/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */
 extern int nondet();

void amir6(int x4, int x1, int x2, int x3)
{
    while (x4-- > 0) {
        if (nondet()) {
            x2 = x1+x2+x3;
        } else {
         x1 = x2;
         x2 = x3;
        }
    }
    while (x2 > 0) {
        x2--;
    }
}
