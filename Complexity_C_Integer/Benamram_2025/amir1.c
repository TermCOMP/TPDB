/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */
 extern int nondet();

void amir1(int x4, int x1, int x2)
{
    int x3 = 0;
    while (x4-- > 0) {
        x3 = x1+x2;
        if (nondet())
            x1 = x3;
        else
            x1 = x2;
    }
    while (x3 > 0) {
        x3--;
    }
}