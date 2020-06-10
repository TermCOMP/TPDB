int nondet();

//realshellsort (avec -delay 3)
void realshellsort(int array_size)//,int numbers[])
{
  int i, j, increment, temp;

  increment = array_size / 2;
  while (increment > 0)
  {
    for (i=0; i < array_size; i++)
    {
      j = i;
      temp = nondet();//numbers[i];
      while ((j >= increment) && (nondet() > temp))
      {
        ;//numbers[j] = numbers[j - increment];
        j = j - increment;
      }
      ;//numbers[j] = temp;
    }

    increment = increment/2;
  }
}
