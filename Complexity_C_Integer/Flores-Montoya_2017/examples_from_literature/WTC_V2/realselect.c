
int nondet();

void realselect(int array_size)//int numbers[])
{
  int i, j;
  int min, temp;

  for (i = 0; i < array_size-1; i++)
  {
    min = i;
    for (j = i+1; j < array_size; j++)
    {
      if (nondet() < nondet())
        min = j;
    }
    ;
    //temp = numbers[i];
    //numbers[i] = numbers[min];
    //numbers[min] = temp;
  }
}
