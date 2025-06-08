/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */
 extern int nondet();

void amir2(int x5, int x1, int x2)
{
    int x3 = 0;
    int x4 = 0;
    while (x5-- > 0) {
        if (nondet()) {
            x3 = x1;
            x4 = x2;
        }  else {
            x3 = x2;
            x4 = x1;
        }
        x1 = x3+x4;
    }
    while (x1 > 0) {
        x1--;
    }
}
