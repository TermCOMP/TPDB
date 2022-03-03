int twn11(int a, int b, int c) {
    while(4*b*b+a+b+c > 0) {
        a = a + 8*a*b*b + 16*b*b*b + 16*b*b*c;
        b = b - a*a - 4*a*b - 4*a*c - 4*b*b - 8*b*c - 4*c*c;
        c = c - 4*a*b*b - 8*b*b*b - 8*b*b*c + a*a + 4*a*b + 4*a*c + 4*b*b + 8*b*c + 4*c*c;
    }
    return 0;
}
